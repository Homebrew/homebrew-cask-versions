cask "firefox-esr" do
  version "102.15.1"

  language "cs" do
    sha256 "a91523d865ad786ca229982d0082aea305b420e9be3ff5b057ebab868c0a0cfb"
    "cs"
  end
  language "de" do
    sha256 "9469614e39da0b00a3a0c8089ef7d5d9f3d150dd494fb12db6e60d3029521a12"
    "de"
  end
  language "en-CA" do
    sha256 "7ef28ff028543554e44eaee8df257c2a43b7190947d1be8e30c48887fcc3a3e7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "43bb75c44914741c219c32b044ef7a108a755c14a23e7c7be3bcdab0b10ea6bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e932a2e45a1b265e9abcb5072f646689275349ed4b05bce1fd11a01e724569b0"
    "en-US"
  end
  language "fr" do
    sha256 "9e1d8019af8c9328cf48721a9782e853cc592ddb94f8f0f30eb5930703ade4ee"
    "fr"
  end
  language "gl" do
    sha256 "c03eed880e4ffa656fd88a1729fa6960c67de1076c6613c50091ef9ba0c90de5"
    "gl"
  end
  language "it" do
    sha256 "8168904a32bb337fb443e515a8b34aa14f92cde1b51b924431cd48eb8fbbf158"
    "it"
  end
  language "ja" do
    sha256 "27671355523418bf4693c63add9d28361c573952fb6c3ecaec2c4e5ba2dd1595"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4d818dcd8c3a7e7db2afb1f49d66989e1561e36e85e0cc81e6ec3bc077fdef4a"
    "nl"
  end
  language "pl" do
    sha256 "9a9d1f1eea56bd807595e05ddb573d39bae1937605a40f384c66ee4e8ea385c0"
    "pl"
  end
  language "pt" do
    sha256 "ffda8871de880661495d56c5aa1f10f1346dd59bf8be24352606a51bf96fcb02"
    "pt-PT"
  end
  language "ru" do
    sha256 "0bf858f06a2c5114c65a26abceea02a09558afcfe3230da167075ea6cff05488"
    "ru"
  end
  language "uk" do
    sha256 "a29a588a0856dda86a5fa632707dfd0a3ea87dff16c2909c4df297799e4cd6e0"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa0a1c25038213b3d83925af19465bd730804cf2942ba202da275208e34a9ebf"
    "zh-TW"
  end
  language "zh" do
    sha256 "244a313a698c80481ca27d3d915bdc131d64fb60f59fbb95ebf4fc835a0cb17f"
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
