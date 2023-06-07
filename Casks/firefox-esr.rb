cask "firefox-esr" do
  version "102.12.0"

  language "cs" do
    sha256 "153dafa4596c6d2164f9fa5904d6b898162aec40b2753a06bbc8a71c6f4c7850"
    "cs"
  end
  language "de" do
    sha256 "2d85af0626cd4bca47001f240826c823e53b041530968d9d786e2315b97715a8"
    "de"
  end
  language "en-CA" do
    sha256 "b72d1eea0a35750f4876b1849a948e8a96c67269a33e1d2be75e9367e28b4f7a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "73d4cf5d55ca042366b73a7f199aad904943e8bd2c50731166c390c54b2be198"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1de34a6832c2590941812dfa5d0d2cf1f5f1517469d16732d48f7e51c0d386ba"
    "en-US"
  end
  language "fr" do
    sha256 "406216de1bbb1dd2a007a532cd6ba9f95546071cb4b619765f023936835b93a6"
    "fr"
  end
  language "gl" do
    sha256 "4cde2b839ef1113a679ac3e5eecd010b7106a1265d4bf126cc0f3b48452f27d7"
    "gl"
  end
  language "it" do
    sha256 "6abdcfcd08027c2878d19751b8e3e3fec177a8b6029d1942574fe658b9008a44"
    "it"
  end
  language "ja" do
    sha256 "dd1ea6a1730ccd08f378886a537b967fa228b45f52f73200d687dfe8ea36665c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "85cd3abf57d67789610823da401f1edab2c2fae12a88902c72da90b6a72fc195"
    "nl"
  end
  language "pl" do
    sha256 "2f712743094fb7c9bc216de842b2aa7df7cbe9b03ebc3283497042bff5d73ba8"
    "pl"
  end
  language "pt" do
    sha256 "424f70aa683b8ad3ab1ea31b59eecf2a69f6c8250f74b7bdf69945a7fd6c3f5a"
    "pt-PT"
  end
  language "ru" do
    sha256 "4a5c71994dffb6347c8bb97325f268c1ba3ef3249c2ddcfc331972d81e74863b"
    "ru"
  end
  language "uk" do
    sha256 "415d52d8648b21b63396bd36da85b921b0459d54b269208b7ba756a9f718557f"
    "uk"
  end
  language "zh-TW" do
    sha256 "ee82fd39235418a7f00f486886e2b753f08c3736dbfdbc150cbd69c2e2a065f3"
    "zh-TW"
  end
  language "zh" do
    sha256 "59a588cb2864fb8a8caac6089db93051e8895b269a0dce82c3cb3bedc151a124"
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
