// ── Bayyari TV Platform Detection ─────────────────────────────────────
// Load order: FIRST script in <head> — must complete synchronously.
// Sets html[data-platform], injects TV assets on TV only.
// Android mobile: gets NOTHING extra — no TV stylesheet, no D-pad engine.

(function () {
  'use strict';

  // ── DETECT PLATFORM ──────────────────────────────────────────────────
  function detect() {
    var ua  = navigator.userAgent;
    var ual = ua.toLowerCase();

    // 1. Capacitor iOS (check before Android)
    if (typeof window.Capacitor !== 'undefined' &&
        window.Capacitor.getPlatform() === 'ios') {
      return { platform: 'ios', isTV: false, isMobile: false };
    }

    // 2. Capacitor Android
    if (typeof window.Capacitor !== 'undefined' &&
        window.Capacitor.getPlatform() === 'android') {
      return { platform: 'android', isTV: false, isMobile: true };
    }

    // 3. Electron
    if (typeof window.__BAYYARI_ELECTRON__ !== 'undefined') {
      return {
        platform: window.__BAYYARI_ELECTRON__.platform === 'darwin' ? 'mac' : 'windows',
        isTV: false, isMobile: false
      };
    }

    // 4. Smart TV platforms — check BEFORE Android (Fire TV is an Android fork)
    if (ual.indexOf('tizen')      !== -1) return { platform: 'samsung',   isTV: true };
    if (ual.indexOf('webos')      !== -1) return { platform: 'lg',        isTV: true };
    if (ual.indexOf('roku')       !== -1) return { platform: 'roku',      isTV: true };
    if (ual.indexOf('appletv')    !== -1) return { platform: 'appletv',   isTV: true };
    if (ual.indexOf('crkey')      !== -1) return { platform: 'androidtv', isTV: true };
    if (ual.indexOf('googletv')   !== -1) return { platform: 'androidtv', isTV: true };
    if (ual.indexOf('android tv') !== -1) return { platform: 'androidtv', isTV: true };

    // Fire TV — detect by device model strings BEFORE generic Android
    if (/\bafts\b|\baftb\b|\baftt\b|\baftm\b|\baftn\b/.test(ual)) {
      return { platform: 'firetv', isTV: true };
    }
    if (ual.indexOf('fire tv') !== -1 || ual.indexOf('kindle fire') !== -1) {
      return { platform: 'firetv', isTV: true };
    }
    if (ual.indexOf('smart-tv') !== -1 || ual.indexOf('smarttv') !== -1 ||
        window.__BAYYARI_TV_MODE__ === true) {
      return { platform: 'tv', isTV: true };
    }

    // 5. Mobile Android (phone/tablet) — after TV check
    if (ual.indexOf('android') !== -1) {
      var isTablet = !/mobile/.test(ual);
      return { platform: 'android', isTV: false, isMobile: !isTablet, isTablet: isTablet };
    }

    // 6. iOS
    if (/iphone|ipod/.test(ual)) {
      return { platform: 'ios', isTV: false, isMobile: true };
    }
    if (/ipad/.test(ual) || (navigator.platform === 'MacIntel' &&
        navigator.maxTouchPoints > 1)) {
      return { platform: 'ios', isTV: false, isMobile: false, isTablet: true };
    }

    // 7. Desktop web
    return { platform: 'web', isTV: false, isMobile: false };
  }

  var info = detect();

  // ── EXPOSE GLOBALLY ───────────────────────────────────────────────────
  window.Platform = {
    name:        function () { return info.platform; },
    isTV:        function () { return info.isTV === true; },
    isMobile:    function () { return info.isMobile === true; },
    isTablet:    function () { return info.isTablet === true; },
    isAndroid:   function () { return info.platform === 'android'; },
    isIOS:       function () { return info.platform === 'ios'; },
    isWindows:   function () { return info.platform === 'windows'; },
    isMac:       function () { return info.platform === 'mac'; },
    isWeb:       function () { return !info.isTV && !info.isMobile && info.platform === 'web'; },
    isSamsungTV: function () { return info.platform === 'samsung'; },
    isLGTV:      function () { return info.platform === 'lg'; },
    isRoku:      function () { return info.platform === 'roku'; },
    isFireTV:    function () { return info.platform === 'firetv'; },
    isAndroidTV: function () { return info.platform === 'androidtv'; },
    isAppleTV:   function () { return info.platform === 'appletv'; },
  };

  // ── SET DATA ATTRIBUTES ───────────────────────────────────────────────
  var html = document.documentElement;
  html.dataset.platform   = info.isTV ? 'tv' : info.platform;
  html.dataset.tvPlatform = info.platform;

  if (info.isTV)     { html.classList.add('tv'); html.classList.add('tv-' + info.platform); }
  if (info.isMobile) { html.classList.add('mobile'); }
  if (info.isTablet) { html.classList.add('tablet'); }

  // ── LOAD TV ASSETS (TV only — Android mobile NEVER reaches this block) ─
  if (info.isTV) {
    // TV stylesheet — injected into <head>, never loads on Android
    var link   = document.createElement('link');
    link.rel   = 'stylesheet';
    link.href  = './bayyari-tv-tv.css';
    link.id    = 'tv-stylesheet';
    document.head.appendChild(link);

    // D-pad engine — deferred after page load
    window.addEventListener('DOMContentLoaded', function () {
      var s   = document.createElement('script');
      s.src   = './bayyari-dpad.js';
      s.id    = 'dpad-engine';
      document.head.appendChild(s);

      // TV-only DOM elements
      injectTVElements();
    });
  }

  // ── INJECT TV DOM (TV only — Android mobile never calls this) ─────────
  function injectTVElements() {
    if (!info.isTV) return;
    document.body.insertAdjacentHTML('beforeend', [
      '<div id="tv-keyboard" class="tv-keyboard" style="display:none" role="dialog" aria-label="On-screen keyboard"></div>',
      '<div id="tv-exit-dialog" class="tv-exit-dialog" style="display:none" role="dialog" aria-label="Exit app">',
      '  <div class="tv-exit-box">',
      '    <div class="tv-exit-title">Exit Bayyari TV?</div>',
      '    <div class="tv-exit-sub">Your session will be saved</div>',
      '    <div class="tv-exit-buttons">',
      '      <button id="btn-exit-no"  data-focusable onclick="closeExitDialog()">Stay</button>',
      '      <button id="btn-exit-yes" data-focusable onclick="exitApp()">Exit</button>',
      '    </div>',
      '  </div>',
      '</div>',
      '<div id="tv-channel-num" class="tv-channel-num" aria-live="polite"></div>',
    ].join(''));
  }

  console.log('[Bayyari Platform]', info.platform,
    info.isTV ? '(Smart TV)' : info.isMobile ? '(Mobile)' : '(Desktop)');

})();
