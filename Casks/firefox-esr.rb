cask "firefox-esr" do
  version "78.9.0"

  language "cs" do
    sha256 "dccabb4113a1041326390da438d1635c98753d4df11e6adbb47050de0f223802"
    "cs"
  end
  language "de" do
    sha256 "1d11b9bdabd5afd6907a0e8be7fdd8549f04bc00ac07d3fe8367ca3e51e7e219"
    "de"
  end
  language "en-CA" do
    sha256 "7c54f7fb6af28016d362db10bad10f3358ff612bd182c056673042fff9a21e71"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5fac6851f7bc0f621463b1ab495aa1dd14271439372cde31868b0614278cbd13"
    "en-GB"
  end
  language "en", default: true do
    sha256 "afb97bd0ffc48103a3513ce8ded8bb245438a9460846643dea72c77a71694e0d"
    "en-US"
  end
  language "fr" do
    sha256 "2408c873e3473c542ebf3e7507f7ddc749a4c2b64e44c4074db4844b0ffd6b52"
    "fr"
  end
  language "gl" do
    sha256 "6188bf23dd19fad243cac6b231cf3e409ee4f41127bd705c5ff38affa071910e"
    "gl"
  end
  language "it" do
    sha256 "64525aba993ce16037807a849c6aee044da8380d7dba13c18d6cd11b2338fb27"
    "it"
  end
  language "ja" do
    sha256 "71261775aaebfbe0787c25ade7a8d818e7977ee6784aefd933a228d12cadd33f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "aced677c065ff1c31b6d0b951668e3fab0e886d5bb4da22dd650219b8d84beca"
    "nl"
  end
  language "pl" do
    sha256 "97d26d4121c49b7363a602643073680ca56d7b74a82891a0a3ac0913f62d1fe4"
    "pl"
  end
  language "pt" do
    sha256 "37b77b25564278221615ab4274333515166e37413ffb0992b2b72933c040b274"
    "pt-PT"
  end
  language "ru" do
    sha256 "ba5d343c885d67a9fe20a8b24ebcbc9d1b756dbc70e17fea2c1bd0306d5bb697"
    "ru"
  end
  language "uk" do
    sha256 "20f09968c653b1eae248172ad090b024fc70e9750870eb00676241711a28fd2d"
    "uk"
  end
  language "zh-TW" do
    sha256 "e5c745c198c414dba0bf63476580d4a1b36a991fed1e78fa22ba52610cfe1c9c"
    "zh-TW"
  end
  language "zh" do
    sha256 "f31ca3c09c910e4c78142ef83d0d61c9434b483b7a9b0008a4e15816958dcdb3"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox ESR"
  name "Mozilla Firefox Extended Support Release"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/organizations/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-esr-latest-ssl&os=osx"
    strategy :header_match
  end

  conflicts_with cask: [
    "firefox",
    "firefox-beta",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
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
