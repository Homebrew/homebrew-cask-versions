cask "firefox-esr" do
  version "115.8.0"

  language "cs" do
    sha256 "0ca1213479e1f75d2f5401ecbbcfd39ffa88027d099946614da2ad9725552395"
    "cs"
  end
  language "de" do
    sha256 "bb8df7ad59b4ff26025bacf5eb9537f4354271a6526a0dad15f793600fccc7eb"
    "de"
  end
  language "en-CA" do
    sha256 "4e20ebb64d12c99609e736a881efd8506dda16d978ec5f91bd61869269a9d4bf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a4141fa1791f4701f3bbb855d3d4850c7d18dcdcb362b5c2eaca7db8ced06060"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7edacf44e860b87410b11bd298e54296d9be53e13736f58693a49720b7a170e3"
    "en-US"
  end
  language "fr" do
    sha256 "6b8fadfb2942b0ac1d7d88762acb70d5ae97c7eebc636f7ecfa589cd5b0b59fe"
    "fr"
  end
  language "gl" do
    sha256 "1efcaa84c94f79a3a66c53f3c462500d6f9e4dd7163362cf75c1f81fa594fb32"
    "gl"
  end
  language "it" do
    sha256 "7cc24f869b1cc3c9a61b5d2a21c3348dbd428fe2ad34aea4a9cb32e551fcc2a0"
    "it"
  end
  language "ja" do
    sha256 "01880350850bdeb52310cc2cb8e22d4779b3cdd1945695e092171b04f8dca230"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "533b1d36620b8edc69b2d7cb698b45bbd246dca5b8bc25e26b47a04c76224ebc"
    "nl"
  end
  language "pl" do
    sha256 "b8e08ad4c79087e6ec53800f327540ba4e74aecf78b45d02a1c7d34a55266a57"
    "pl"
  end
  language "pt" do
    sha256 "5bbd13b02e0d92e39257c1b5c98b6c3ad26609a68902b7e7721a271dbdafdeb8"
    "pt-PT"
  end
  language "ru" do
    sha256 "adae80141dba9b87ce2abe6e6e4d7c3453fa47daf4da17c7831893bef080aa12"
    "ru"
  end
  language "uk" do
    sha256 "aade697ec6c10fc46854954c83630e62de2755317539e151d4eef09cf8239780"
    "uk"
  end
  language "zh-TW" do
    sha256 "38abf7937ad25365b14f5821fb30e64935651053f314bbddcc7908858d8a142a"
    "zh-TW"
  end
  language "zh" do
    sha256 "1b5dfa01663b222e65e3a270c2c9f35583c398c7fd699d34150805f1923d1a28"
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
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
