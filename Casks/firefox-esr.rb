cask "firefox-esr" do
  version "115.5.0"

  language "cs" do
    sha256 "5f3229d6e47bd97b8c0acc76b8cd05ca2fe443cb8dd7124a4aa5c482eaf862f4"
    "cs"
  end
  language "de" do
    sha256 "8fcae8c0888eaa6bee3eed2b75c8b30c64be9c5439258fb631ddb89efb66346b"
    "de"
  end
  language "en-CA" do
    sha256 "7ff114fe20f9e5e930714243b992e8cc77bcdf2cefd1e53b78eb6f99f0357c58"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2696f4ab390c3bfddecea125640a7f46ad20de5f5a21d82181f7db4f9c1c9616"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2df975b17b21a0eddd67f08c619ddaed59dd9b03a43fb29bb8d0b05d54f2a16c"
    "en-US"
  end
  language "fr" do
    sha256 "337a58e19049423f07d4a651743885e1a486037487ed17e6514d817ce6a72451"
    "fr"
  end
  language "gl" do
    sha256 "f54e0a5cfb1f957ed9e00058b5e590bacb3f855e7c4f4f68bc7cd1a7d2848c73"
    "gl"
  end
  language "it" do
    sha256 "acc71bcd4bc43541b4142dd9f24c04df473aa81c0deb4201349788d5c8b6992e"
    "it"
  end
  language "ja" do
    sha256 "1f020dadd4054ea15cddf553848dbf017a78792b82553ba7dcd5932e7fcae8ac"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7c802239307a177c80e9cd9cde770b7e00bbc02451bfb1cd0642f818ff4e4483"
    "nl"
  end
  language "pl" do
    sha256 "cab9a2e15e55b9fc8b4a3e2fbafc688fddc001186b2d84298cd824dd31a7d529"
    "pl"
  end
  language "pt" do
    sha256 "d44aaa4c08b1c1dfaabd751f3d18e3bed6f81d3254f229fddfdaf17802ccb955"
    "pt-PT"
  end
  language "ru" do
    sha256 "c08f4fbe7e67140e1600974fe87377822c41ea3761ebe84e68db32fb932b90eb"
    "ru"
  end
  language "uk" do
    sha256 "f351a1b552fd6e0239b60bf966408edcaa80f9a68a796386b36c010e0f90ac80"
    "uk"
  end
  language "zh-TW" do
    sha256 "014f813bfb0c637102e4f278c022857cd9884a47f4e0ceb1bc298e4c1c14a2d4"
    "zh-TW"
  end
  language "zh" do
    sha256 "22a5ebe06cbb60eecff1b064784972223df10247befee1896b6500c9669553e0"
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
