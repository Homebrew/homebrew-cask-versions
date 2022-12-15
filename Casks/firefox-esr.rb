cask "firefox-esr" do
  version "102.6.0"

  language "cs" do
    sha256 "0f8bb98bad02fd391bae5a6c58edfc272367604ed6dbe3935b2634f84e7c2057"
    "cs"
  end
  language "de" do
    sha256 "754b45c8fdf332e763b6cc121ec4749e5476f8b66497c7f25d8f9f74f2f44029"
    "de"
  end
  language "en-CA" do
    sha256 "48da119bb7ba56e113b44caa7b136519330347efddfe690be8f598cf58136da9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6e847b15bd9e8dcff4377ec8adef335618053c609236fc940ca29cae90ea192b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "38d31114480eb6c6b28d3f5f6db64c8d32a4014a98bd396717455066dc1bc4e8"
    "en-US"
  end
  language "fr" do
    sha256 "aa395e8f3ba94cd26cf3d515f0e76e092555da2075941e5abd317f4891f4c30b"
    "fr"
  end
  language "gl" do
    sha256 "c2c86f9172def269da88d37e3691ec053d8087fbee49ac9e8ca7dfa18b812461"
    "gl"
  end
  language "it" do
    sha256 "163743b944f959fc32e5e8f0712b669668bc1f5a0b7ce2418fc1c460701a1595"
    "it"
  end
  language "ja" do
    sha256 "d1fa3f4a71c44b0da1beabfaa6e8d65b6ea5f442c6bbefa8672b2f7f99d544c4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "32c0bcbf58eb427a45471b52fc00591b4853cea50607739e0474fe76d9d7bdaa"
    "nl"
  end
  language "pl" do
    sha256 "948fdc3b40b083f6e12b468d1eb3cfcbe0b3a62e33a9c09029f630d64cf29f48"
    "pl"
  end
  language "pt" do
    sha256 "cf267ba4556fd1e204c1d6cf494ab68299ce22bce9931c46058e0b43f009ef31"
    "pt-PT"
  end
  language "ru" do
    sha256 "015b62098f4e917d64579cbd83c020dc1bf5f2e648ddb52bd0bd22aae8224dcd"
    "ru"
  end
  language "uk" do
    sha256 "d7280586a2aa73630bc78ea8a9075103b99c63da5a93637a2cdc5c4d401c55d3"
    "uk"
  end
  language "zh-TW" do
    sha256 "d900ed4828ba86a1be8bd8af924757e7fdeb0bbe2c45b1bf4296dcc9d1696646"
    "zh-TW"
  end
  language "zh" do
    sha256 "9216708f2e1c7d1883e712a8ed6d9067aedaa68846f84937b7342cc7d28453ae"
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
