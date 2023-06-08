cask "firefox-cn" do
  version "114.0"
  sha256 :no_check # patch versions use the same URL

  url "https://download-ssl.firefox.com.cn/releases/firefox/#{version}/zh-CN/Firefox-latest.dmg"
  name "firefox-cn"
  desc "Chinese version of Firefox"
  homepage "https://www.firefox.com.cn/"

  livecheck do
    url "https://download-redirect.firefox.com.cn/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: %w[
    firefox
    firefox-beta
    firefox-developer-edition
    firefox-esr
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  uninstall quit: "org.mozilla.firefox"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
        "/Library/Logs/DiagnosticReports/firefox_*",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
