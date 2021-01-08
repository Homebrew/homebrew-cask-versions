cask "firefox-esr" do
  version "78.6.1"

  language "cs" do
    sha256 "07e2f33c26b3846dee574b15c850a10f51e0900a4243b6d26d81e087e8e3874c"
    "cs"
  end
  language "de" do
    sha256 "ba6b0aa139728d7111cc5998b49c8a4fb83d9424774db2870acd9f9b76dd588c"
    "de"
  end
  language "en-CA" do
    sha256 "2d1f8c381ecc5d0539546454a4804f1a5e654b844fddee98244aed37143bf9cf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0c1ae91c6c044dfca2e35e0692a01a901fd52cbcdc359042a1b48e3b17dcc6ef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f0ef96e267bafaff278770f4c6734980b626ec9bfe009dfe74b4caeb4cc37271"
    "en-US"
  end
  language "fr" do
    sha256 "32106808ec2ee5445ee4bbc7017fe4b97fd17b06c8768a9a0368d585d69e28e5"
    "fr"
  end
  language "gl" do
    sha256 "adb8aa6c41fd35837afc2277eddc60f5f34ad0ce77cacb753dcfd7cb25a98aa5"
    "gl"
  end
  language "it" do
    sha256 "20229f14b6893154bbb279bb42e2ed3d600460a780ac823fb0b8f9f9085e5414"
    "it"
  end
  language "ja" do
    sha256 "2c76e65f4e4c476ecd6a4f12c2b8247893e5002bd3b864d8d55525a786670c6c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6bbad9a8eb5063622a002d3697705dc64ffce2c9b23236bb9ffe9c0c267d3d54"
    "nl"
  end
  language "pl" do
    sha256 "e29434c3c387954ad84dffdcfba1ae8b6fac28e49c1a4f19b82a92f8cd1c05eb"
    "pl"
  end
  language "pt" do
    sha256 "cd24d8c863d82b317b18fb917852f605bd1aeb842bb3b8b3c7abb53ba52e5c48"
    "pt-PT"
  end
  language "ru" do
    sha256 "7b3dd72166addb81934e429af2730c97ef773d1033a873384a748808cdf3fc4e"
    "ru"
  end
  language "uk" do
    sha256 "6167f4f2756ccf64d38940042232b4eaf6f78eac68985a4e090b21bc3dd14e0d"
    "uk"
  end
  language "zh-TW" do
    sha256 "fff80d3d5be7ea3e5c4b98ce2d846950d205bd288858d678eeb50543a7378abc"
    "zh-TW"
  end
  language "zh" do
    sha256 "e38c65cc29f2dbf3cb06171abb585579021eeb0b3da23772fc490fcb6caf40e5"
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
