cask "firefox-esr" do
  version "91.10.0"

  language "cs" do
    sha256 "16feaff9748ad1693d971af613e93aa4f1959fa4ffc0945d5323ebc84341d2ea"
    "cs"
  end
  language "de" do
    sha256 "353c93aaee0a0d66f37ac7506f2e670f58d66bdb22646f919b52e26d44f52f21"
    "de"
  end
  language "en-CA" do
    sha256 "1e821cb9714a80de22e250f14a59c347d3d7bf46ad6d8d4ccba9ffe1d20f0e06"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a3da1d1976da82c91f7df609d3444ff7bdabc352fa170244ccd91ee262f51fa1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e3715a6226a57a3c9b226f9566a6645c0733be3366e437d64a4210aaa9ffb82e"
    "en-US"
  end
  language "fr" do
    sha256 "eb8d720b9dd9391b5e5a4776ce70f3e011eae3b7e18100dd0358eb4fd90ee5bf"
    "fr"
  end
  language "gl" do
    sha256 "aebca652c6d4178f453867374628af1aefc74dce99df0bb63c337437cd23643b"
    "gl"
  end
  language "it" do
    sha256 "0b71bde9b43aa56d5d49cd6242259fc5976649f32f54a8890e94c6e7fea7013a"
    "it"
  end
  language "ja" do
    sha256 "76c0219c5ca833a03df8863ff1063826787feb1ab8e80d4cf7fab7e4031b2bf7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3a63addf9b2593b94051d0458c43c543a64337eda925fb4b3da2df74e5c313a3"
    "nl"
  end
  language "pl" do
    sha256 "3b067788fad2be3f64d3c1bfc489a882ca80ab5b4e65991a609dfd64a7c67d3f"
    "pl"
  end
  language "pt" do
    sha256 "3daa0139db50bb068d783caefb6f2b94ded0f5277f0343fe9fa3d5a2af04265e"
    "pt-PT"
  end
  language "ru" do
    sha256 "57a8e2420fd0ff29079cacb69e6b1f3804ac7ce7b322dc617901642ee02be826"
    "ru"
  end
  language "uk" do
    sha256 "921ffbab23c5c4e08efa0912b80d6af0b9067d2db291b36f4575603985736732"
    "uk"
  end
  language "zh-TW" do
    sha256 "7a236ce1fa0cdcb5fc92bbb25ecf490d2ec13a9bf031257bf2c6f0a727b92319"
    "zh-TW"
  end
  language "zh" do
    sha256 "c68973294e75e2aa4c50b576a8bba70b3aa66a2690362bcf4b9258c8e4213516"
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
