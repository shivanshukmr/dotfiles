/***** OVERRIDES *****/
/* alt key as accelKey */
user_pref("ui.key.accelKey", 18);
user_pref("ui.key.menuAccessKey", 0);

/* Smooth scrolling */
user_pref("gfx.webrender.all", true);
user_pref("general.smoothScroll.msdPhysics.enabled", true)
user_pref("general.smoothScroll.msdPhysics.continuousMotionMaxDeltaMS", 12)
user_pref("general.smoothScroll.msdPhysics.motionBeginSpringConstant", 125)
user_pref("general.smoothScroll.msdPhysics.regularSpringConstant", 100)
user_pref("mousewheel.min_line_scroll_amount", 42)

/* Use search engine from address bar */
user_pref("keyword.enabled", true);

/* Startup and newtab page */
user_pref("browser.startup.homepage", "about:home");
user_pref("browser.startup.page", 1); // 0102
user_pref("browser.newtabpage.enabled", true);

/* Pocket and firefox account disabled */
user_pref("identity.fxaccounts.enabled", false); // 5000
user_pref("extensions.pocket.enabled", false); // 5000

/* Disable letterboxing */
user_pref("privacy.resistFingerprinting.letterboxing", false); // 4504

/* Disable FPI */
user_pref("privacy.firstparty.isolate", false);

/* Save cookies for specific websites */
user_pref("privacy.clearOnShutdown.cookies", false);

/*** UNCOMMENT THESE ***/
/* 0412: browser.safebrowsing.downloads.remote.enabled,
 *       browser.safebrowsing.downloads.remote.url */
