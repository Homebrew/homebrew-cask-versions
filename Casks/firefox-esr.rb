cask "firefox-esr" do
  version "115.3.0"

  language "cs" do
    sha256 "f759e8d726e64a851acf6a608a327d6ce5bcb0460160c33a8e24f6d9cfa8feba"
    "cs"
  end
  language "de" do
    sha256 "0b10ffb8b8075895cb4044c3eb7f9e325f2c3c7d59d3f75f8c143f3e6c7552b2"
    "de"
  end
  language "en-CA" do
    sha256 "90a2cc8e3cf85fa95fdb6b34d7fcf92e8dc65e47407b5895761d0a97fbf93540"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2e83d36a9971442cbbc194d56eeb30198f8679779bd6b6cf0c18e856e3ab69aa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "175dbd4c47e41e8b2eab1ac3a2c93683b483ba8f9351348d3bed25c879f4105f"
    "en-US"
  end
  language "fr" do
    sha256 "cc3d06c44259dcc27e29f8036e85769588c920a67d1d2bdd2f5e65be4f708dc3"
    "fr"
  end
  language "gl" do
    sha256 "6106c484080ffa071a8cb5349a999cfc80c0f5663387bb2f462117d100c84b33"
    "gl"
  end
  language "it" do
    sha256 "2b819d161e0e2f3e8adac7e6a36e905da75e3f80bae0da9c375bcde1657e119f"
    "it"
  end
  language "ja" do
    sha256 "33d33679f66caa39cbf895cadeeef92776b460ccbd18f23d21b508e96eea1496"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c7228d5b7874559adab47dccddc38b22534047f8b716176649962991c759051c"
    "nl"
  end
  language "pl" do
    sha256 "2a2205613573b59e8c7c6bdb4c0cae93b828d794c1a5aea5d68827b6b6b9cd9a"
    "pl"
  end
  language "pt" do
    sha256 "267e829663834d266303f8c780093c35577f2d2ae4667ce5755c51d332e94942"
    "pt-PT"
  end
  language "ru" do
    sha256 "582620d24ede7bb0d1e47a2cdc526b395f8cd10e678d23750811b333e0aafaf3"
    "ru"
  end
  language "uk" do
    sha256 "57f83abd7a2ccfbf140d5c44b5226b66b5e0dfaab9a2ce752d7c807e6c7030d1"
    "uk"
  end
  language "zh-TW" do
    sha256 "eb33d4012600a2501cd66f395a37f0880c26020932a9f462231a4d6ca39de6d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "99e0752fe44722859e41d75cb1a07741978a2d70955a0c37d91cd5b3120a491b"
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
