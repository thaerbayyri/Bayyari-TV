// ── Bayyari TV D-pad Engine ────────────────────────────────────────────
// Loaded by platform-detect.js ONLY on Smart TV platforms.
// Never loads on Android mobile, iOS, or desktop web.
//
// Usage:
//   Mark any focusable element with data-focusable attribute.
//   BayyariDpad manages focus, focus ring, and remote key events.

(function () {
  'use strict';

  // Key code maps
  var KEYS = {
    UP    : [38, 'ArrowUp'],
    DOWN  : [40, 'ArrowDown'],
    LEFT  : [37, 'ArrowLeft'],
    RIGHT : [39, 'ArrowRight'],
    ENTER : [13, 'Enter', 10009],          // 10009 = Samsung OK
    BACK  : [8, 27, 461, 10009],           // Backspace, Escape, LG back, Samsung back
    // Note: BACK shares 10009 with some ENTER overrides — handled by context
    PLAY_PAUSE : [179, 415, 19, 10252],
    REWIND     : [227, 412, 10228],
    FF         : [228, 417, 10229],
    MENU       : [18, 10133],
  };

  function matchesKey(e, list) {
    for (var i = 0; i < list.length; i++) {
      if (e.keyCode === list[i] || e.key === list[i]) return true;
    }
    return false;
  }

  // ── BayyariDpad object ────────────────────────────────────────────────
  window.BayyariDpad = {
    isEnabled   : false,
    currentFocus: null,

    // Called once after the D-pad script loads
    _init: function () {
      this.isEnabled = true;
      var self = this;

      // Focus first focusable element
      var first = this._getFocusables()[0];
      if (first) this._setFocus(first);

      // Single keydown listener — all TV remote keys routed here
      document.addEventListener('keydown', function (e) {
        if (!self.isEnabled) return;

        // ── Directional navigation ──────────────────────────────────
        if (matchesKey(e, KEYS.UP)) {
          e.preventDefault();
          self.moveFocus('up');
          return;
        }
        if (matchesKey(e, KEYS.DOWN)) {
          e.preventDefault();
          self.moveFocus('down');
          return;
        }
        if (matchesKey(e, KEYS.LEFT)) {
          e.preventDefault();
          self.moveFocus('left');
          return;
        }
        if (matchesKey(e, KEYS.RIGHT)) {
          e.preventDefault();
          self.moveFocus('right');
          return;
        }

        // ── Enter / Select ───────────────────────────────────────────
        if (matchesKey(e, KEYS.ENTER)) {
          // Only treat as ENTER if not Samsung BACK (context: dialog open)
          var exitDialog = document.getElementById('tv-exit-dialog');
          var dialogOpen = exitDialog && exitDialog.style.display !== 'none';

          if (self.currentFocus) {
            e.preventDefault();
            self.currentFocus.click();
          }
          return;
        }

        // ── Back / Escape ─────────────────────────────────────────────
        if (e.keyCode === 8 || e.keyCode === 27 || e.keyCode === 461) {
          var exitDlg = document.getElementById('tv-exit-dialog');
          if (exitDlg && exitDlg.style.display !== 'none') {
            // Dialog is open → close it
            e.preventDefault();
            if (typeof closeExitDialog === 'function') closeExitDialog();
          } else if (document.getElementById('s-login') &&
                     !document.getElementById('s-login').classList.contains('active')) {
            // On any non-login screen → show exit dialog
            e.preventDefault();
            if (typeof showExitDialog === 'function') showExitDialog();
          }
          return;
        }

        // ── Media keys ────────────────────────────────────────────────
        if (matchesKey(e, KEYS.PLAY_PAUSE)) {
          e.preventDefault();
          var v = document.getElementById('bayyari-player');
          if (v) { v.paused ? v.play() : v.pause(); }
          return;
        }
        if (matchesKey(e, KEYS.REWIND)) {
          e.preventDefault();
          var vr = document.getElementById('bayyari-player');
          if (vr) vr.currentTime = Math.max(0, vr.currentTime - 10);
          return;
        }
        if (matchesKey(e, KEYS.FF)) {
          e.preventDefault();
          var vf = document.getElementById('bayyari-player');
          if (vf) vf.currentTime = vf.currentTime + 10;
          return;
        }

      }, false); // false = bubble phase — player's capture listener takes priority

      console.log('[BayyariDpad] D-pad engine active');
    },

    // ── Focus management ───────────────────────────────────────────────
    _setFocus: function (el) {
      if (!el) return;
      // Remove from previous
      if (this.currentFocus && this.currentFocus !== el) {
        this.currentFocus.classList.remove('tv-focused');
      }
      this.currentFocus = el;
      el.classList.add('tv-focused');
      // Scroll into view smoothly
      if (el.scrollIntoView) {
        el.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'nearest' });
      }
    },

    _getFocusables: function () {
      return Array.prototype.slice.call(
        document.querySelectorAll('[data-focusable]:not([disabled]):not([style*="display:none"])')
      ).filter(function (el) {
        // Only include visible elements
        var r = el.getBoundingClientRect();
        return r.width > 0 && r.height > 0;
      });
    },

    focusById: function (id) {
      if (!this.isEnabled) return;
      var el = document.getElementById(id);
      if (el) this._setFocus(el);
    },

    // ── Directional focus movement ─────────────────────────────────────
    moveFocus: function (direction) {
      if (!this.isEnabled) return;
      var all     = this._getFocusables();
      var current = this.currentFocus;

      if (!current || all.length === 0) {
        if (all.length > 0) this._setFocus(all[0]);
        return;
      }

      var cur    = current.getBoundingClientRect();
      var curCX  = cur.left + cur.width  / 2;
      var curCY  = cur.top  + cur.height / 2;

      var bestEl   = null;
      var bestScore = Infinity;

      for (var i = 0; i < all.length; i++) {
        var el = all[i];
        if (el === current) continue;
        var r  = el.getBoundingClientRect();
        var cx = r.left + r.width  / 2;
        var cy = r.top  + r.height / 2;
        var dx = cx - curCX;
        var dy = cy - curCY;

        // Check directional alignment
        var inDirection = false;
        if (direction === 'right' && dx > 0)                  inDirection = true;
        if (direction === 'left'  && dx < 0)                  inDirection = true;
        if (direction === 'down'  && dy > 0)                  inDirection = true;
        if (direction === 'up'    && dy < 0)                  inDirection = true;

        if (!inDirection) continue;

        // Score = distance, biased toward axial alignment
        var primary   = (direction === 'left' || direction === 'right') ? Math.abs(dx) : Math.abs(dy);
        var secondary = (direction === 'left' || direction === 'right') ? Math.abs(dy) : Math.abs(dx);
        var score     = primary + secondary * 2.5;

        if (score < bestScore) {
          bestScore = score;
          bestEl    = el;
        }
      }

      if (bestEl) {
        this._setFocus(bestEl);
      }
    },

    // Refresh focus after DOM changes (e.g. screen navigation)
    refresh: function () {
      if (!this.isEnabled) return;
      var all = this._getFocusables();
      if (this.currentFocus && all.indexOf(this.currentFocus) >= 0) return;
      if (all.length > 0) this._setFocus(all[0]);
    },
  };

  // Init after DOM is ready (script loads after DOMContentLoaded fires)
  window.BayyariDpad._init();

})();
