cask "firefox-esr" do
  version "115.0.2"

  language "cs" do
    sha256 "af9ab0c6a2a319116660f244b44cdf7338cbbbcccc6a1ce469b44b7ff17d3809"
    "cs"
  end
  language "de" do
    sha256 "3d33995baea97dc76cb3367090a77c650f1b5b02077c108150f22d56dcc4c347"
    "de"
  end
  language "en-CA" do
    sha256 "b6492671d1fe83d1981c8e5754311b734318b56a112c1a46c5c334dbca5f124e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c6749493661205a02983677e2b8d7186e70be086563bc53f9e1b4340166f0e03"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c5cb2235aeef7df02701cae4c5601efdc18e7484812c9827bc1c6736d1ec8d48"
    "en-US"
  end
  language "fr" do
    sha256 "92a70592753b292ff3bc0b12920eadeaae94b183d56ad23f2d8f04482216fbd4"
    "fr"
  end
  language "gl" do
    sha256 "186c603d70aa5644b948ab88e16e957cf4475153261103814182913fb096c10a"
    "gl"
  end
  language "it" do
    sha256 "f5369654a12a4b6aa8819bb2a1bd8d16dcca2616cc9b9ce816199277ef4f2aed"
    "it"
  end
  language "ja" do
    sha256 "55b00c503cacfe65f242fee9c43c6f616c99b5a3c064e1b464bac653516d410b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0b7c08676995634151e5632a0f2cab0893f4c6abe2a2d4705db1748c75b3085b"
    "nl"
  end
  language "pl" do
    sha256 "40ae341a2eeb95cf26edf144738b6fe13f93e9fee8af2f5b8bcce1c2a48e5b01"
    "pl"
  end
  language "pt" do
    sha256 "70270e3dbf9127588bc4df4eb4e9e620cf47377701518ff32e75532156dd62eb"
    "pt-PT"
  end
  language "ru" do
    sha256 "7e33ba53a1a1db549993b326de862f93577dc6cc2f411fe41cf40283941b1b41"
    "ru"
  end
  language "uk" do
    sha256 "710804ffd713f2fd6a0b5b1cda939cdc2180229c396f3ded8851ba2154dece2b"
    "uk"
  end
  language "zh-TW" do
    sha256 "94124b815ff3c2b862e078e1fa4c3c19db331503c37bfa1f29ba45a662e89818"
    "zh-TW"
  end
  language "zh" do
    sha256 "2e5ee4f334472af4735f14bf7a9a56bba53bd0d0a5ee664319c97c0dd612215f"
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
