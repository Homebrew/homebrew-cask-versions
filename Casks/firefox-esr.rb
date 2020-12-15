cask "firefox-esr" do
  version "78.6.0"

  language "cs" do
    sha256 "06ea145524c003850fd51e0e764edc853b45792daef5600490e508c00b284f0e"
    "cs"
  end
  language "de" do
    sha256 "2ad60359684773c88765392d5f0d008d8e2a65985451c7222d7298dd24613cae"
    "de"
  end
  language "en-CA" do
    sha256 "facdb460f6bbba178208416f6e85e9ce1a58cc1a2fe9d9b53b60e0daf996a9c2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1efc8291e01e33b3007eef6a920a2f8946f2568905837d5070f9f36d8beb3a09"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5e0909089ca88092839c5543fb7d08db78161a5c4ce2beaeaa6075fb1a326572"
    "en-US"
  end
  language "fr" do
    sha256 "ed4c2a67d91f708b76e5c5477848744c93f4b1aa649c7075bb30810ffeebb6fd"
    "fr"
  end
  language "gl" do
    sha256 "36324d521fd107d882f61fefc3c2cc2aa9047d30325c6a9771b525d78f36c8c9"
    "gl"
  end
  language "it" do
    sha256 "25fbcf058d65c1159a40261cc36f584ddd62707f7b22dcfe606dbe3049c518c5"
    "it"
  end
  language "ja" do
    sha256 "45f3666f57ef199883cb0bc5aaa2d1a677160361c7734b4d8c067b4659c54a09"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3a93d5cdb5ae53aeecec5c10efe890934434dd2735ea003d7eaa5a78007f2f72"
    "nl"
  end
  language "pl" do
    sha256 "4f948802dc7fba4db4d5939c3b077fb690b96406d7fb377c59ad8b0e86279a0b"
    "pl"
  end
  language "pt" do
    sha256 "46a907c1035515aa1a2f21b0302243a6e2a755c8a4164b3f2ce440127cbf2203"
    "pt-PT"
  end
  language "ru" do
    sha256 "975a5763a7340d5b24944be3e4a9b96e7c52b42405ebbf5f8bddd7cfde7dd7fa"
    "ru"
  end
  language "uk" do
    sha256 "9294b7c09566821135d7680d6f630caab845490aa369272246b26d617148fe96"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0992e061e42efd71f85adb8b39cff394000b1edaa4fa8855df7c348192a969b"
    "zh-TW"
  end
  language "zh" do
    sha256 "83215f6e7ecffc6a25f4f46c4067ba53e98341074cb23610edbcee06bc483b45"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-esr-latest-ssl%26os=osx"
  name "Mozilla Firefox ESR"
  name "Mozilla Firefox Extended Support Release"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/organizations/"

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
