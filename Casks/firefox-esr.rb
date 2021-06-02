cask "firefox-esr" do
  version "78.11.0"

  language "cs" do
    sha256 "25b8f1c60b0f8603b923ed57bdfb3b1a3bbd42edc00bf1af7665464bdeb08981"
    "cs"
  end
  language "de" do
    sha256 "cfda5b70a4e25b40c330f8a7a77fa061b30befbf4a170528445c9ce0f95ea892"
    "de"
  end
  language "en-CA" do
    sha256 "b660a67f24058eea5626099eb057a716b3c6cda94855aea7b312f33bcab450dd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b821a55668f9943206aeacca25354652c888eb8c561ea6a36ee2faec68f1a635"
    "en-GB"
  end
  language "en", default: true do
    sha256 "98d4cba6a673a830b7a8c7e8280320b7515528f024222ac9b185a3db39a6ce72"
    "en-US"
  end
  language "fr" do
    sha256 "080f6bf3e48a0dc21741f7315d24baf90bb1e838cc563944bb94c4ab63bee054"
    "fr"
  end
  language "gl" do
    sha256 "cd42e09c7807cd8af2adf3f2049aa033ea90a5c8d541ccf40bc5db1a9ff45d9c"
    "gl"
  end
  language "it" do
    sha256 "f2a85425084c7c5e1765b7afde105d491f5f78c0a1d031d80466d8d595df5fcd"
    "it"
  end
  language "ja" do
    sha256 "5d046f84245261a738e776e334b5129f96149b6e3b6be4af91f409c15826fbfb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d26a4dd8f8056a8abcc222fa7ae5fb6c617b117cf0e9a8fa8bbbab25a40d1940"
    "nl"
  end
  language "pl" do
    sha256 "1d8731753232bbb65e36308e8d0173460a5c15060e96c327c91a6192e75a811d"
    "pl"
  end
  language "pt" do
    sha256 "4188b934bc2acb40f2eb0db4f2009400c3d6fc45e953bb31e5c06528c32b3302"
    "pt-PT"
  end
  language "ru" do
    sha256 "f4f30d7e2d2806ce45d9d8e861e3fad92c0676b99f8c8e5637998b77603391ff"
    "ru"
  end
  language "uk" do
    sha256 "febdc5e724b1ba0832f2054e21a57e2538e89d15a58a51b22b2c84db6c6cdf03"
    "uk"
  end
  language "zh-TW" do
    sha256 "2c6973cba801a2e7ed2382a8c56e9afb3df7ae5114f4c0e6236bd38c64d7c058"
    "zh-TW"
  end
  language "zh" do
    sha256 "f836fe84a5cb767bf70a7b11b8fce2b0bff27956608c142e25fc3d5d7b38f40b"
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
