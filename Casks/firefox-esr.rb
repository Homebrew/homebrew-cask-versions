cask "firefox-esr" do
  version "91.4.0"

  language "cs" do
    sha256 "45a48afba7ab4d8b2c616b46a26e5aa37f7e242d403f69951cb330fcb029451c"
    "cs"
  end
  language "de" do
    sha256 "8a94bea59f101d9947fd5bd5c3e8e96a6434a87daef46c535e0daa7b8e678c93"
    "de"
  end
  language "en-CA" do
    sha256 "98aa29af9de5b377c74af55adf0bc510501eabf316f1926d31e883e0150c8a6e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b21287d929bc92b603f99d5708e6e23ffb2db37a39e95a3579176d36ad55db00"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0a951680467dfa574dcc407b2d7a290273557c1af26f0c3d13dcf062b412d1f9"
    "en-US"
  end
  language "fr" do
    sha256 "c2167f568dd6e746f23a52361655a957aaefcbf3d423e84ede955372b2d4a6de"
    "fr"
  end
  language "gl" do
    sha256 "0b401ec72cf2f1240a8bca77d4b84944d2e795b49c54696c212c4d13ba773cd0"
    "gl"
  end
  language "it" do
    sha256 "0eade36194bfb8bc8acd2e3a51cbafffd83026d71329f412e01f39493b1e6567"
    "it"
  end
  language "ja" do
    sha256 "138ec999c3e4350959b86f27cb66719522a1e9155bedbdebdb1d30014b078842"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b1cc6aee7b6c64c3da4216cd6f39112058cba9bc503d661de300d09acaef1760"
    "nl"
  end
  language "pl" do
    sha256 "8763bcf5b5a596061a2d80f857f7924548a1b99dbfaceb58487d3c9215c92318"
    "pl"
  end
  language "pt" do
    sha256 "871da94250c853a5b36786483905489eb14dba023e7b213ddbcc4584d714c7cc"
    "pt-PT"
  end
  language "ru" do
    sha256 "5ef54d8d8303c07df7de56f5565f5a5fafda42b6c3f4457aaa184e13f2a88e57"
    "ru"
  end
  language "uk" do
    sha256 "803012a794049d1fc11aae09374f1f84f5673cad479aa604780b2b330ab757bf"
    "uk"
  end
  language "zh-TW" do
    sha256 "aea63d33964ba4ce864be02467c0d9a4cad45825123dd2205d51427cf39f4e6d"
    "zh-TW"
  end
  language "zh" do
    sha256 "ef1d48c816c60e42581e26dfe6326d265e98bdc7bfcc086317ddc19876ce6849"
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
