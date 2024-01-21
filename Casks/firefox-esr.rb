cask "firefox-esr" do
  version "115.6.0"

  language "cs" do
    sha256 "b37908471dce1fc3b91e3422192c9591753c4f1d4fbf367873a141dcf7ab84d0"
    "cs"
  end
  language "de" do
    sha256 "12bcfe915baa868354deabb4a81a55d29e849983c57b9614a2a0a72c5afd86ac"
    "de"
  end
  language "en-CA" do
    sha256 "2c66b6423f774bc0a46a3ea44117d48baf1be5972103d775650b1cee2924d828"
    "en-CA"
  end
  language "en-GB" do
    sha256 "19df1702d1d7bca842656738fb047c635176db071ed30a8af9be889cfa4fed64"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fad7d5e5fb50edd0d1c205429ff2a5b3e4643f87aace3f48eb0af3f84a593b0c"
    "en-US"
  end
  language "fr" do
    sha256 "d6f40bc1f1073d14e937ca3650148869f625dfbd00fc6b3782db4facfa0817ae"
    "fr"
  end
  language "gl" do
    sha256 "5616b3857d2683c90d883434fc57ff97f13cec164688e8460cb5cec18f7ba485"
    "gl"
  end
  language "it" do
    sha256 "149eac204c98eca71e78e92eeded51a0afa6261f201740b8f38db7b839ba5e09"
    "it"
  end
  language "ja" do
    sha256 "028fce75c5a0d101f997571dc6d647d700b08f2c213a9365a45bc27a50678135"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ade55622fccce11505f39d23ae2b3ca55f5c99ece9acee7f83a9b88bae204cb7"
    "nl"
  end
  language "pl" do
    sha256 "6a5f522a48e5fe1a687ac62df024754649538150d328f3fb2c43da9bd46b1231"
    "pl"
  end
  language "pt" do
    sha256 "005c62b7fcb0f450852bec346794e803b0a6c4e5e9c79097895089a6cd9a4e74"
    "pt-PT"
  end
  language "ru" do
    sha256 "df9573ceddb065c972227d83d3c774eeac59dd1340df10b778303234e96a2343"
    "ru"
  end
  language "uk" do
    sha256 "352a9d2677e5b067bf8453d1f51b6997cedcd54a79b41217a61207a78f26388d"
    "uk"
  end
  language "zh-TW" do
    sha256 "a70ce163152e674f605a20acef0daf7949a511a1aa4e7db826cbf74b88a091bf"
    "zh-TW"
  end
  language "zh" do
    sha256 "cfad6a60ada93f38fc77841c92198ff12828cb966ed152bfaf1450f28bc39e40"
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
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
