cask "firefox-esr" do
  version "102.11.0"

  language "cs" do
    sha256 "8a4bea706999675c5a73f9ccaa85f27484d8afa7fd020afc8468a0b3004b13a7"
    "cs"
  end
  language "de" do
    sha256 "4ce87c2ef752097d1c6db4e05eb4f6eeecb22aa42f8b62f47e768d5ccd93bcdb"
    "de"
  end
  language "en-CA" do
    sha256 "d6bd94020cb7fa4970da119757c79aaa6d42dac902203f011776c97767e2a1be"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4cd7d438c9e816b754500e4ad4b74d06a1d91e4baa703be7778c7d0a6f41f9e5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c6f63172551cce8373a5f9c2881c1b55556a374029807b08d497591d6d0d6aeb"
    "en-US"
  end
  language "fr" do
    sha256 "1b6c3b9327bb6f4b7e1b51cda0c477aa8f9d354199d15858d30d6d218ea6977d"
    "fr"
  end
  language "gl" do
    sha256 "50aba724eb73e2349bacbbb5deda3d5e55d3d488b2ca85e306f44711df6eba8e"
    "gl"
  end
  language "it" do
    sha256 "cbedeb8147454cf2148d0aae826af61004acba0a3d18384cc185188e0e8461eb"
    "it"
  end
  language "ja" do
    sha256 "dd5d118519dc48a13600559095413544be96d1224d9c86262e0c20d494cbb208"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c2b9c10326768c18cac2e7d5bddb117717e4e181028c8853b6aa4a2b1ffb8887"
    "nl"
  end
  language "pl" do
    sha256 "4d769dd9781d94dba42f9a60f18c088eb53ba5ec200088510e529e1fa3b7ffd1"
    "pl"
  end
  language "pt" do
    sha256 "e89af68872de880004ed2f2db2bd085af7595d325188d4234ad9fc8857009a58"
    "pt-PT"
  end
  language "ru" do
    sha256 "4afd69dbc2aff29e498557aecc64c94a47da299d9cac40854908434fa6fe84d3"
    "ru"
  end
  language "uk" do
    sha256 "07211b600a3c324a45199861570772f79db6e146fec5074313562cc1a24f3406"
    "uk"
  end
  language "zh-TW" do
    sha256 "f572e8d1cc9d3c3ec6becd41380566299805f43f2aaa0bcd415ec5e0bfb52e96"
    "zh-TW"
  end
  language "zh" do
    sha256 "bd5e7b07ab73fde00306ceb34da66f4c706ee0c164cf59a18ba67c1b6e4b3f55"
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
