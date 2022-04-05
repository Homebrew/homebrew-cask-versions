cask "firefox-esr" do
  version "91.8.0"

  language "cs" do
    sha256 "262117f5a7d29f3784e565722b5155f0b2fbd49e99c803f16c078915e26669bd"
    "cs"
  end
  language "de" do
    sha256 "7467a09e8682f13b76a82e2202757fd9bf60765eeebeedc17f3b9d384a8bc5b4"
    "de"
  end
  language "en-CA" do
    sha256 "0280ce2ca28fb5c8b017f34b67b2a388728676a29711a3c035ab06398a6b76b1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "306dfa36b3679381d7a92252402db8919dea91ce6c043fdf3b4f8225402e9f46"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e87120dcb24b7e0b9f9143e807a665a4b058f574beddcb51786a7e979663ff71"
    "en-US"
  end
  language "fr" do
    sha256 "e6038e2edb781eb348bc89eb66220eba7487758a57ef1d956b77f9ab4610f22f"
    "fr"
  end
  language "gl" do
    sha256 "7df87fcd4f28c4f1d40805e8def56db77b7b2861d6f5d214d29c7dd85f0cfd9c"
    "gl"
  end
  language "it" do
    sha256 "5ec6da789c198f7c6f6480d36fd2238394ca457ad6626ed37eecd3e8a93a0bb2"
    "it"
  end
  language "ja" do
    sha256 "498a0b1681ed070608bc7363719a4a05385ce92c45f8104c42d4e7970417ef23"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4a68912552a07bc4e7501a98dc3bb6c6cb0d4c636f3b0de372c988be48c5ac7e"
    "nl"
  end
  language "pl" do
    sha256 "ecbd01dfd0f2f98731b89057f595be9d66b86b39a64cafe00a58d3e6f3e73fde"
    "pl"
  end
  language "pt" do
    sha256 "79bef412c5097a96fd8fc6df18aafb8712c6b9323f1424b8fdfcbca135c601e7"
    "pt-PT"
  end
  language "ru" do
    sha256 "c7dd61cf7de36a69fabd2c2ccd101982919cda246911b812df3dd35c5c84c180"
    "ru"
  end
  language "uk" do
    sha256 "d42006b508dbb27df6a226232ea72508b9f0593988b22d90ef9f3c35c9b6eb24"
    "uk"
  end
  language "zh-TW" do
    sha256 "8c5f6f6d81609a0f6c7844a26c2e8d4991ce4f7162587b8dfcfb25df4b411d69"
    "zh-TW"
  end
  language "zh" do
    sha256 "610b44536ebd50f31ebf35ec786410e465e6b873e0adcdb5257ad7543aa10fe6"
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
