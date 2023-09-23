cask "hamsket-nightly" do
  version "0.6.5"
  sha256 "58d967060ff0a25dc35df3d22d58ef4c63142af9014b8fcb4aad3d7b906862ff"

  url "https://github.com/TheGoddessInari/hamsket/releases/download/nightly/Hamsket-#{version}.dmg"
  name "Hamsket"
  desc "Free and Open Source messaging and emailing app"
  homepage "https://github.com/TheGoddessInari/hamsket"

  livecheck do
    url "https://github.com/TheGoddessInari/hamsket/releases/expanded_assets/nightly"
    regex(/href=.*?Hamsket-(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :high_sierra"

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
