// alt key as accelKey
user_pref("ui.key.menuAccessKey", 0);

// Pocket and firefox account disabled
user_pref("identity.fxaccounts.enabled", false);
user_pref("extensions.pocket.enabled", false);

// user_pref("privacy.resistFingerprinting", true);

// Hardware acceleration
user_pref("gfx.webrender.all", true);
user_pref("media.ffmpeg.vaapi.enabled", true);
user_pref("media.ffvpx.enabled", false);
user_pref("media.navigator.mediadatadecoder_vpx_enabled", true);
user_pref("media.rdd-vpx.enabled", false);

// Fission
user_pref("fission.autostart", true);
