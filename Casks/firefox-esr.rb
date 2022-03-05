cask "firefox-esr" do
  version "91.6.1"

  language "cs" do
    sha256 "04a2d48c4979c531c683a39ca00778476f1a460769de5fda45a51e178ae33923"
    "cs"
  end
  language "de" do
    sha256 "0a93f45c124a250475ad5fc75b68168ddb1090874fdd7252c406a6d3461d51ec"
    "de"
  end
  language "en-CA" do
    sha256 "b374b8336fb204d3c1c6c52aced012281a7b9d9e5ed6f14902d5a68d244b5dfa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "151c586c3d2f529e74098d14a2c7bc77336523ba4be8571fd65022ea861df02b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7ce966df61bb814a055d30af6d81709d220f4f8a874903e42684a9c99b8e66dc"
    "en-US"
  end
  language "fr" do
    sha256 "27c9f79793f7358d48aa1c95e3f43debdf53f6cca221d1a36f8edadb40e188f9"
    "fr"
  end
  language "gl" do
    sha256 "c0dec95e4ebfb7e43d1ec6ff7987a6441080f0da140f6f2c59d9b865871b474b"
    "gl"
  end
  language "it" do
    sha256 "ee33cb1967069b477c6fef57eb1e1d5e3ace7ae6a5b97c4fd26f15bd1900ff69"
    "it"
  end
  language "ja" do
    sha256 "071f8a8a06b09f41b840b60db293a1e556c4c70a60568971b012c001c7ee1aa0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2ec394529071890bd2f385caffd6df900a61e5a99d329f351424e9eb6ac68d1a"
    "nl"
  end
  language "pl" do
    sha256 "c98b340e14ccc1d35162c475dcdc8ce636ac897b621e547f74d50bf4c830a10c"
    "pl"
  end
  language "pt" do
    sha256 "4d70350df4a8a58b31c3787214241805713c41e56e84b6fdbfc4673baa24b082"
    "pt-PT"
  end
  language "ru" do
    sha256 "7cab10a763aaac5d98e7f3348d586906d3a6746e5ce5b338dffa6c373a1231a5"
    "ru"
  end
  language "uk" do
    sha256 "5df2c712b3491d075d12fbbf6dc82285e0394ef4f63782be1825402ddd21be2c"
    "uk"
  end
  language "zh-TW" do
    sha256 "4810b7c91f94d39fb0b41fe4a1bc21427cf61a4c994c4ce21188228aebf92fe9"
    "zh-TW"
  end
  language "zh" do
    sha256 "4611e889c0dff84f4c155da1f2ffb8f91b31d2064e6fde443d7eeeaa41cec45d"
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
