cask "firefox-esr" do
  version "91.7.0"

  language "cs" do
    sha256 "1ca9e959998e268673a7da3d2a70c51f8e4f08bec0a0279ae53b55035cdb9855"
    "cs"
  end
  language "de" do
    sha256 "33548af031db806cef1729ddcf011360841ab80cc13bf7e4469086ee26d73649"
    "de"
  end
  language "en-CA" do
    sha256 "edfbe4a9f76fef49074203c77cc0dba20aae2d1045b3636320fba6960bbbbacf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "130ed4e38a748b30ae067da322ac5df1be0c13be4f832d8c84c94f7fa1fa000d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5bbcb84b763d1a1ca51f96d7cce254f2e24613c9a3799f91c7d3ff9ce9961a4e"
    "en-US"
  end
  language "fr" do
    sha256 "32c5cb0a8b096b69f27b04bfcc6f7c90176c505ad6543da44578c8c8a4f6b3cb"
    "fr"
  end
  language "gl" do
    sha256 "9874167e978207b79fe9915f6bdb65019e5ace0eeab7dab8a60e55e78fd79364"
    "gl"
  end
  language "it" do
    sha256 "4fd255b7f6647738880bac0513039c8d65fe9e1a44488da191a72f57b3a4b592"
    "it"
  end
  language "ja" do
    sha256 "a2185bde31c1080a0094e243ff16f6db1da777e6c6c2e68c302688884ff799c4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "02811d83a8f355858a2182185a0b2cd66834a059c3f95d3496381d287159988e"
    "nl"
  end
  language "pl" do
    sha256 "4b600fb374380aea7c77b6a5534e66bcb2862099f91aa5753b1664802bb8b808"
    "pl"
  end
  language "pt" do
    sha256 "a4df5c8381e14230246616fdad5c4a897b4182e15bd11c1d9527204f1466fa3b"
    "pt-PT"
  end
  language "ru" do
    sha256 "b3023136e32cb02ec9538dac526669a73cd48263aeb97efa051e70a1b39a4ee9"
    "ru"
  end
  language "uk" do
    sha256 "257e5d79f8ee9d6bba8004b7ff9ec3893ce920dc396098db8fd833ead12fd8cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "621974046f8e12c5d83425a2d2919726bc0b7f9bd6694fc4f4a7886688bc6cf9"
    "zh-TW"
  end
  language "zh" do
    sha256 "e278fc48152afc51d925534e1b6cdcf91b131781235322ebb362308d0d7c21b8"
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
