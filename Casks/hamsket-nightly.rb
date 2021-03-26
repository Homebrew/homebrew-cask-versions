cask "hamsket-nightly" do
  version :latest
  sha256 :no_check

  url do
    base_url = "https://github.com/TheGoddessInari/hamsket/releases"
    result = curl_output("--fail", "--silent", base_url)
    result.assert_success!
    "https://github.com#{result.stdout[%r{href="([^"]+nightly/Hamsket-.*.dmg)"}, 1]}"
  end
  name "Hamsket"
  desc "Free and Open Source messaging and emailing app"
  homepage "https://github.com/TheGoddessInari/hamsket"

  app "Hamsket.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Rambox Helper_*.plist",
    "~/Library/Application Support/CrashReporter/Rambox_*.plist",
    "~/Library/Application Support/Rambox",
    "~/Library/Caches/com.grupovrs.ramboxce",
    "~/Library/Caches/com.grupovrs.ramboxce.ShipIt",
    "~/Library/Caches/com.saenzramiro.rambox",
    "~/Library/Logs/Rambox",
    "~/Library/Preferences/ByHost/com.grupovrs.ramboxce.ShipIt.*.plist",
    "~/Library/Preferences/com.grupovrs.ramboxce.helper.plist",
    "~/Library/Preferences/com.grupovrs.ramboxce.plist",
    "~/Library/Preferences/com.saenzramiro.rambox.helper.plist",
    "~/Library/Preferences/com.saenzramiro.rambox.plist",
    "~/Library/Saved Application State/com.grupovrs.ramboxce.savedState",
    "~/Library/Saved Application State/com.saenzramiro.rambox.savedState",
    "~/Library/WebKit/com.saenzramiro.rambox",
    "~/Library/Application Support/Hamsket",
    "~/Library/Saved Application State/com.thegoddessinari.hamsket.savedState",
  ]
end
