cask "firefox-esr" do
  version "102.14.0"

  language "cs" do
    sha256 "d09e8b1be2976c36aec644a94857951725e805988ed01991313e6380e4270358"
    "cs"
  end
  language "de" do
    sha256 "6183a655dbc054b1e1a458faf0d578d5af209d4cb24b1ea2d1977d0fb849cc60"
    "de"
  end
  language "en-CA" do
    sha256 "278d10caec2a59ea5c19a318b1da15a2eca64fbcfc8642b05964c5e4bdb2017a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "29b547c500dc855b7021ab7e251facbebf779137d3ae8283df713dceb8e547ad"
    "en-GB"
  end
  language "en", default: true do
    sha256 "de18b288c30075de46ed64b1f8b306b6d77f345f96d96efc90e66c3f5c002965"
    "en-US"
  end
  language "fr" do
    sha256 "2cabfd27b05198c3062e0bace59b3f6d0e2ea3d2b29e0b0c39bc83856c739bb5"
    "fr"
  end
  language "gl" do
    sha256 "693502a8301f164edf205b5787d60c08dc3f7554a65f2274daab2761d281c239"
    "gl"
  end
  language "it" do
    sha256 "fc2dc29a6170bbd9c051730c7490cf1cd0f2c3f4183c734557d9857446452c8c"
    "it"
  end
  language "ja" do
    sha256 "76e83b8c3e578404a88173318348fcf99e1fcf509f63a10c50a2654c3616ca34"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a8c0f39735f9fe63d6d3e5341fddbf3246ca8873e02880e893f25daac8586d5a"
    "nl"
  end
  language "pl" do
    sha256 "edd019a3bbba8776b9b7e934b0e562c2713c6f86237c826cc0f5645e141d4a40"
    "pl"
  end
  language "pt" do
    sha256 "8deb49dee0b529a574d7ed10738041dbbe2a9fb7b7be69b17de71b15f382792d"
    "pt-PT"
  end
  language "ru" do
    sha256 "c4091c7af09c7d24dbdc20d3f1a1090487c6b57cad22324513a9bea02f814016"
    "ru"
  end
  language "uk" do
    sha256 "e3e7f24bc941d3b3ae850ccc92549b4fddeacfcfa0ca78055e79fc75a8e53119"
    "uk"
  end
  language "zh-TW" do
    sha256 "0dae533733e60785a9a0b4d5e6f5e3b5a151926b6da3449ea0e72253413680b6"
    "zh-TW"
  end
  language "zh" do
    sha256 "9d15a39984303765156d67699b73a67ba6c1349d192b75a5ae3ee8cc0ef146c7"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox ESR"
  name "Mozilla Firefox Extended Support Release"
  desc "Web browser"
  homepage "https://www.mozilla.org/en-US/firefox/all/#product-desktop-esr"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-esr-latest-ssl&os=osx&lang=en-US"
    strategy :header_match
  end

  conflicts_with cask: [
    "firefox",
    "firefox-beta",
    "firefox-cn",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  uninstall quit:   "org.mozilla.firefox",
            delete: "/Library/Logs/DiagnosticReports/firefox_*"

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
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
