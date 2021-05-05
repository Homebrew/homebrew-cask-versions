cask "firefox-esr" do
  version "78.10.1"

  language "cs" do
    sha256 "afab3243d08b361ede2890ef179ed9f30e0f2be71a3f1833b0159b6c697d56fd"
    "cs"
  end
  language "de" do
    sha256 "c28515d41004dcfe6184b7749623dd08ee4d5456400c900278cd80085b2686b7"
    "de"
  end
  language "en-CA" do
    sha256 "0c7820df45449e89a6ae55aaa7a826279f089493b192bb3a08372aee3b6cecdf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5d13ab02acf7d7b3f9138585ab3f0d9b0b327f39cb632e0c88415ca4b5862257"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ddded24f345179bda5314ab425cd8309376655a1c6b25ccd02f7116f11722700"
    "en-US"
  end
  language "fr" do
    sha256 "5d4cae5860965d3ff9f1b2253e4f26127f6c74fbd0db9dd2beb4c21cab24c959"
    "fr"
  end
  language "gl" do
    sha256 "4e5113570128928771c2614391a858d2eafe9d7e937406ea7a53958aeac6f856"
    "gl"
  end
  language "it" do
    sha256 "27f9416cadf6bb5e8ee341a4beb7cfd60e64637511d19f5bd802c40ac8c05068"
    "it"
  end
  language "ja" do
    sha256 "4af3c08b3e05d3ff20a2d7d5174155db10d6dd007d3656fb42945ee401e15bc2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fd21003714c1d053e723693e3be533e3f0f58102bdf114da2b2693e45610c896"
    "nl"
  end
  language "pl" do
    sha256 "d7e01a0a4f04f18e9c4e7f2980b8e9896e9ce07aa5d501649b28d6591836003e"
    "pl"
  end
  language "pt" do
    sha256 "0f18458094d7611e9020fa8701453209415c6fca67a9c8d5f3c2c003e21ecc60"
    "pt-PT"
  end
  language "ru" do
    sha256 "d5cfb7fa77820b6d3500fd9b904b98b37bf9238f3f88d175af066a4c61376321"
    "ru"
  end
  language "uk" do
    sha256 "856988efacbfb8711edbc00481fee3fdb6ba9d1b095686d8698f2822612b95a5"
    "uk"
  end
  language "zh-TW" do
    sha256 "ef043077d05f84dc772c4c50cc6469ff3a2075aa3cf632a703b5112685318639"
    "zh-TW"
  end
  language "zh" do
    sha256 "e74e3e161e3f999d5dfbb645a2667ad71f19d3c333ab365258f02a19fe95204c"
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
