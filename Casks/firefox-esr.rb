cask "firefox-esr" do
  version "102.10.0"

  language "cs" do
    sha256 "acbcfea2289dd38a37199b433cb941e06b30d2c20e1482e45d3430007a80abd0"
    "cs"
  end
  language "de" do
    sha256 "aceb3e0b71c73a763bbc710bc0119695a48859891e55bd004949d031a784129a"
    "de"
  end
  language "en-CA" do
    sha256 "b92cb3b65e93ba900e44a0ac5352c6a2ebfdb186af35a7ac6a332922bf685acd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2e5e6a7a3dbf8c0251af8d651f67235cc178b7827f0764a1af5c6863c7093995"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d150157a1d950222fc804fccbd64162860691957954cecaaf4fdca485fe465a4"
    "en-US"
  end
  language "fr" do
    sha256 "caa8d0a679106b649aa3f25c3c04b35e87f3216d36cbaa5f08a953c6d5545b0b"
    "fr"
  end
  language "gl" do
    sha256 "e859e939479ef5caf7f0274b470cafafcc4bf5eda96a120fb9def355d90eb92a"
    "gl"
  end
  language "it" do
    sha256 "513f706fcd32c12d784ddb684c844ac59b0b43d83081c188df1a24168c87d052"
    "it"
  end
  language "ja" do
    sha256 "0f9b21c2e1d3a2bcacdee03d70f8d56fb671a1f6d9f3bf9727a70d767c18f216"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "680745a6a95050899ac99a9113e33f3722aa8d744485c3bc45c42cf9a1183d07"
    "nl"
  end
  language "pl" do
    sha256 "eae1a64347eb2f87941ba339ba3df45fde1f685e6438ec5f09de9214dcb82aae"
    "pl"
  end
  language "pt" do
    sha256 "220188715d2aea71470eedb0f222a516bcb558289bb4f63ed59c498349a746d4"
    "pt-PT"
  end
  language "ru" do
    sha256 "43555447430070649842b261a16aeef8a4e665eaee66c815421ee5b0bbb3aa35"
    "ru"
  end
  language "uk" do
    sha256 "02dd80d1d0aa4d84b9889eb839420e3190e45b520124dc17217907ef29344697"
    "uk"
  end
  language "zh-TW" do
    sha256 "2954d354eae73f721fb6d7ee6adc22bf183077aacdb2269eaba39cf52c24d9eb"
    "zh-TW"
  end
  language "zh" do
    sha256 "45341d2e68a0a52f827e5a0dd0d117c8afceeb225b7afa159bb8c62e1c04fd3c"
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
