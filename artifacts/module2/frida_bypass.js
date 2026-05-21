// Frida script to bypass common certificate pinning and trust checks
Java.perform(function() {
    // Bypass okhttp3 CertificatePinner
    try {
        var CertificatePinner = Java.use('okhttp3.CertificatePinner');
        if (CertificatePinner.check.overloads.length) {
            CertificatePinner.check.overload('java.lang.String','java.util.List').implementation = function(a,b) {
                // noop
                return;
            };
        }
    } catch (e) {}

    // Bypass okhttp (older versions)
    try {
        var OkHostnameVerifier = Java.use('okhttp3.internal.tls.OkHostnameVerifier');
        if (OkHostnameVerifier.verify) {
            OkHostnameVerifier.verify.implementation = function(a,b) { return true; };
        }
    } catch (e) {}

    // Hook X509TrustManager.checkServerTrusted
    try {
        var X509TrustManager = Java.use('javax.net.ssl.X509TrustManager');
        X509TrustManager.checkServerTrusted.implementation = function(chain, authType) {
            return;
        };
    } catch (e) {}

    // Hook TrustManagerFactory to return an all-trusting manager
    try {
        var TrustManagerFactory = Java.use('javax.net.ssl.TrustManagerFactory');
        TrustManagerFactory.getTrustManagers.implementation = function() {
            try {
                var tm = this.getTrustManagers();
                return tm;
            } catch (ee) {
                return [];
            }
        };
    } catch (e) {}

    // Hook Android's CertificatePinner in older okhttp versions
    try {
        var CP = Java.use('okhttp3.CertificatePinner$Builder');
        // no-op builder methods if present
    } catch(e) {}

    console.log('Frida bypass script injected');
});