cask "firefox-esr" do
  version "115.3.1"

  language "cs" do
    sha256 "1e1189c5c0c92b694f199703d718ba33dfa894560656467f1df158ba1380ed97"
    "cs"
  end
  language "de" do
    sha256 "0a2eaf52f58f62b50ab2ccfe91b11e3b9e2b4a081bedde76c59a87c2d10e8531"
    "de"
  end
  language "en-CA" do
    sha256 "b356ee0249a35b539a6fe9b4fdd34bcbd4d24a1de3792baf3525534b39723117"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2625efd3bceb0a9d0473093be790c001b8644e1c191ebf5a38cd15158b839b8d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9c9659c3c7d9062a5fd55cea1e7237cb2b36da900c341508fc2a19f91259780e"
    "en-US"
  end
  language "fr" do
    sha256 "3293fc8dfe3d0189285a472231a6a776e8d8c3719e255b63009f2bf7fe0e42d4"
    "fr"
  end
  language "gl" do
    sha256 "b7dbaeaaba9f66999b7a36616920edb293c30119534f90690b5b71520473707f"
    "gl"
  end
  language "it" do
    sha256 "123c1f66470c4894609038aa27188d750679657eef5a446c65d3ff7a87d09dfa"
    "it"
  end
  language "ja" do
    sha256 "35114a3b69f9fe9e0486ffd9c6fd75f74c60bb94a375948e5977fa4395f7d5de"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a488c9757999fb8fbf0d10c5ed7c72acb61f802ad3db81016c7b5e0b9269a602"
    "nl"
  end
  language "pl" do
    sha256 "4aad9bc0e149902303ef67b8c8c74ae56a4cca51678cd2c562cf4ba7f9eb5c55"
    "pl"
  end
  language "pt" do
    sha256 "b2b3274dc773dc73276929a16ed04735d05390284439273dd7158f8773588a91"
    "pt-PT"
  end
  language "ru" do
    sha256 "613fa74721632c44cf7a4e61b5c7366f3f24ed056f24450f10441093c66defe2"
    "ru"
  end
  language "uk" do
    sha256 "e51600e53c04bbc3c81f83832897358eabcf880749f6f97fd93d21cf8d095869"
    "uk"
  end
  language "zh-TW" do
    sha256 "c2e584364431c261de51eabf75e721408fa6f3e9d81f9ede497d9d03ce367cd2"
    "zh-TW"
  end
  language "zh" do
    sha256 "2fb9ae975cc518159fb0dec1752afe6b3577f21c210d7b54bc94e45116577882"
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
