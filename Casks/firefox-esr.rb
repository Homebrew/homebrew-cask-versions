cask "firefox-esr" do
  version "102.9.0"

  language "cs" do
    sha256 "fccc8650073f7668a6a27d81b1dc0ef7e70974381e68ed4558655f25854fd00a"
    "cs"
  end
  language "de" do
    sha256 "784b2e48c004f0d5fbb5dfc3400b2f47838de4242d7a42489a3c401de1dad687"
    "de"
  end
  language "en-CA" do
    sha256 "2b41279d1dec620bae64b02856a0b14a9562a915e9dbaa380aa2b1803a26fc13"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c2d537507adf390540e118fa32b249546410f1f8e8b4e78aa61d20834a1fb29b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5338e436fa3ca704d340f25e93b8ff9b318306710ff10306fa28c2a89b5ecfcb"
    "en-US"
  end
  language "fr" do
    sha256 "f798fe14b8f7faabb7e5efaee87ff46cfc679636ce5fbb2ebf9a31c473bf74af"
    "fr"
  end
  language "gl" do
    sha256 "e9def414f8513dd1f1e62a76478031174d856db5354e5f2711b04392cc191718"
    "gl"
  end
  language "it" do
    sha256 "f073c52cd09bd771f64b0bc0df90264546f6441e6771ba67f9b20bf64458d12b"
    "it"
  end
  language "ja" do
    sha256 "6f0fc07087a07a69f1554e4042e3e37c2b11265aefce55766def3147fb299afd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d572060d2d6374512c9624a7816fa372841f14158946d2fdf694d55351847c8a"
    "nl"
  end
  language "pl" do
    sha256 "82e03afd887ea9783f7436a9b987f3b6c6e78246b6cc1e830574ac97bed97edb"
    "pl"
  end
  language "pt" do
    sha256 "4cc16bc194cc49cd8ed070eea4b099f48cf7799f1b713e931f8ed0ee51ae3223"
    "pt-PT"
  end
  language "ru" do
    sha256 "3c3f0bc7bce00d559e0792c95222bd3bcb4cef35c39c370e5ed249b4a97acfcf"
    "ru"
  end
  language "uk" do
    sha256 "431c74aebee39be6eb4dbd1d5a3437eaca491f98ae3cd7a19470cad63e1a298c"
    "uk"
  end
  language "zh-TW" do
    sha256 "7aa76b32ddfa7209cd0fe5dc636baac870e8b5dcb286144590fcfa1ed60754a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "d3a24bb71737d9221b85859361454af0369fbf55571e72748c4ae18bd0dbba79"
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
