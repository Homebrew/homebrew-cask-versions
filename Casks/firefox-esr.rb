cask "firefox-esr" do
  version "91.3.0"

  language "cs" do
    sha256 "1a5657089b5c4a7e222c402b7a81c651c33adb76c2fbe8f88e377cd28c99372f"
    "cs"
  end
  language "de" do
    sha256 "10dd1ab1a2bee4e85ccef76c256e5bb4564803b35dd8d2ed9192cf518075bcb0"
    "de"
  end
  language "en-CA" do
    sha256 "c3949df5f99fdd3b4a25927d733d592ddc2d37f33c966b1ebd56d18fa86d1dc3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3641228b8e7f299aa38cf5a5a4c865fe4f5583893db8e27a47f5fb37413b51fe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d83a0cb15da7666a89b191614436b048de8619ec1615329912de6228ac0a4805"
    "en-US"
  end
  language "fr" do
    sha256 "a4a76a0719239f6a42ba9e26eaa05ed855cb09f248d7325e18e1411a51b80856"
    "fr"
  end
  language "gl" do
    sha256 "26178bc06894e05281fdaea9f263b5e0f5893e072f2e357ede2345b278f3619f"
    "gl"
  end
  language "it" do
    sha256 "6fbc4f45a8d31ff391f980e2c9b7ad2230ac4d602fd59253d8365a7765d79bdc"
    "it"
  end
  language "ja" do
    sha256 "90436eb1225e3c33e06065f1e6f76298b53ef0cfead482ab11f4e94e75402143"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d4fd51d7bdc481bfa9d9b6dfe823c8c9b6b09fd77f8c408c0bb6b5e4ff76496d"
    "nl"
  end
  language "pl" do
    sha256 "9d0dc8be6390b89966e7a0fdb985ca8bbdfdac9cd10db2b481b89335b5abc677"
    "pl"
  end
  language "pt" do
    sha256 "57237a791aea386d124d96a3de22242305afa36103155967d405607151475262"
    "pt-PT"
  end
  language "ru" do
    sha256 "eb6e2f9b18f610e6ebe790fcbdd3b71e8bebf270a782386b66e51dc73cfbc5ae"
    "ru"
  end
  language "uk" do
    sha256 "cb226d74598f80f2f17bfc2f9613217aefbee3cb2244ea8e543b380c3b711c73"
    "uk"
  end
  language "zh-TW" do
    sha256 "509be7216509898bca38888862d4963d06504430ad5c4077870855ee999e2d48"
    "zh-TW"
  end
  language "zh" do
    sha256 "cbbc9f725070ce7f2f6d72f4562b2588218ec8d6b4db5cb9796fab3850c92349"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox ESR"
  name "Mozilla Firefox Extended Support Release"
  desc "Web browser"
  homepage "https://www.mozilla.org/en-US/firefox/all/#product-desktop-esr"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-esr-next-latest-ssl&os=osx&lang=en-US"
    strategy :header_match
  end

  conflicts_with cask: [
    "firefox",
    "firefox-beta",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
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
