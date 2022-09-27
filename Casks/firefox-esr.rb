cask "firefox-esr" do
  version "102.3.0"

  language "cs" do
    sha256 "b7371a3eb5cfbd29482ae6e07736f617d8e4533606fcf081b0952c327c690d83"
    "cs"
  end
  language "de" do
    sha256 "413ef4cab2ea819f9031d46ce26c7a95701e01c5663e5208f0b359a9b84279cf"
    "de"
  end
  language "en-CA" do
    sha256 "899c8c3a463020aaccfd9b620fbe7cffacc98be8e76be6c5fcd3a88c46a1bf4f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "64eac40ce78926c0e369c6b4f555f28d9198ff54969d8dac26c8b501a6c47c12"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1bae4bd67a915af2f65ee9032df4a225741e5c3360ac5a89cf65fc988d29c420"
    "en-US"
  end
  language "fr" do
    sha256 "d1ad348ac53bc33e3131be470c8b05036788ea1b02d5fc29e764373993a20ffa"
    "fr"
  end
  language "gl" do
    sha256 "848adb63c3af3198d14978c0d65352f871960838a5817faf705bba3d11fa74b3"
    "gl"
  end
  language "it" do
    sha256 "ace5690343fc3525655944250843ac2f93afc5e418b8fed8f4f9faf2269645b1"
    "it"
  end
  language "ja" do
    sha256 "86e4bc9c0a9596b0cf5c7ebc6b4e8fa106638c0a984e534ca3194e6e3de7b2d5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "abb3e3d54c46d367d1da9a12f1147d61fc3ed706214f4fe00225fb0affc18403"
    "nl"
  end
  language "pl" do
    sha256 "01123c78abe910e7cc5fd1a20b2327c89aa6c542404d3466c34b75d747d4f62c"
    "pl"
  end
  language "pt" do
    sha256 "5b570dcb69b5c0838d75486f7bf0462ef8e9e3713e3f35f173e6631fed8b01a4"
    "pt-PT"
  end
  language "ru" do
    sha256 "ecbe8927f35e468c79c55e8498393e7b68811fe603cf8ab9091639fde1d750c6"
    "ru"
  end
  language "uk" do
    sha256 "3d6993d34c7c0aeefa9ffa92eadae8cb08c55035cf1125eb86f1bede0fea0db0"
    "uk"
  end
  language "zh-TW" do
    sha256 "ebaa46056b069179a21bcbf5981a4d3b370ec0d0985bbd6ff80a361a1139558b"
    "zh-TW"
  end
  language "zh" do
    sha256 "ee9056a72f242e60102cdef2ce40bbb93814d74bf4819bd799dfc8ff6f50b862"
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
