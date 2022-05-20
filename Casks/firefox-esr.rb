cask "firefox-esr" do
  version "91.9.1"

  language "cs" do
    sha256 "ef8fd45b02efd627b7cf31dbe767fc524f2d485fa3c93dd7dfd986d662543f80"
    "cs"
  end
  language "de" do
    sha256 "d326b9debf0da2a2fadaf50df17899980e7bb974f0dd0129281f10a0d5432d55"
    "de"
  end
  language "en-CA" do
    sha256 "3b62526e4d62ec45072010512c13ba360783fd03c0f3d472ac4f47ce5990dfe9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e9e67e524cfbaded8faa8ace9e7b84758935dd33f3f6ae4e6c9f3b5bfcb1e831"
    "en-GB"
  end
  language "en", default: true do
    sha256 "def9211a30743677a3d992dacf809d38eb010260229b6f5194193191362f4278"
    "en-US"
  end
  language "fr" do
    sha256 "94a2e0e2c0b49db3170ee28329d57096723326f962791b5447b9af9e5a9c3fcc"
    "fr"
  end
  language "gl" do
    sha256 "6ce0fbab193f60e157a9c948c407a0432761272700e67588bead5994c57d2a0c"
    "gl"
  end
  language "it" do
    sha256 "046a6939218a8cdee1fd9a33522f9eba21a5e2e1d3db80875cb6067e712e853e"
    "it"
  end
  language "ja" do
    sha256 "333bdd5bdabbe86148dfa9ba55499b5c1fdeeae2872c544f0bca0475a99331a8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9480eab7638ddbe5fe9e6d14fffe5771334e86e6e058289d49c2862bc69a5a00"
    "nl"
  end
  language "pl" do
    sha256 "beeb874abec272da8751c50013b1ca1fec8f174adf1a4dedb6d0f018acee6798"
    "pl"
  end
  language "pt" do
    sha256 "936295c1ce4949fb9bf0c99131635db0a3d642106ae11a55ccb397c6abcc376b"
    "pt-PT"
  end
  language "ru" do
    sha256 "1ef55313f0ab331fcf6b649fcc6b6bad26ea077a8b36892afaeb43682125038a"
    "ru"
  end
  language "uk" do
    sha256 "f63595b7266b35c46d291ff869c466838530409963d223a9b807eac363cb28de"
    "uk"
  end
  language "zh-TW" do
    sha256 "d16791065a36ede134c9135d9819de6d353d0e7fb1e3b83d69b8870cedfb4a18"
    "zh-TW"
  end
  language "zh" do
    sha256 "339dd5cbb3cee9f2726a8d87dcdcad1d1fcab549a91698eac690837d31d0d290"
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
