cask "firefox-esr" do
  version "78.8.0"

  language "cs" do
    sha256 "68cf3eb3bffd1eef9109af10486bf2e824c76a3ec0e3108c7d20fa9417aac093"
    "cs"
  end
  language "de" do
    sha256 "d928e5b7c72f06fe12c120976056db0097ac24ed859bff6a0a96446e2cf4165c"
    "de"
  end
  language "en-CA" do
    sha256 "b37a6f711529f81e1603f3832e1d055df2cc8e4edc0df633bcf98e5d470c094f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "87a6c1d08e62946ed6316c5c8a024ddbf0d9de211569c214a2d25f06fce95b0b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "87a07644dcb326672da0ef6c6aa46307c6a7558d4fb6ac4c615778036c5d522e"
    "en-US"
  end
  language "fr" do
    sha256 "9f789ebaa7915437eb0fe80b14529e198fd13ed5a265296b6b89f861eadca6d1"
    "fr"
  end
  language "gl" do
    sha256 "682277a021c2a3e707b6d77ba3c9e8c62df84fd55ed914f38c7fd47cb8577ae5"
    "gl"
  end
  language "it" do
    sha256 "b1925b8069b023620e2b5e1ce1d0c3130a86e01703d31ce52857662412641000"
    "it"
  end
  language "ja" do
    sha256 "ef5b1a07de8478318f1781d8e8312ddfc5c7f17f04dd74809857b00199842243"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2c786374be353f05899f3421bd778a15d4ec7d1620991821620e075e5e4349a5"
    "nl"
  end
  language "pl" do
    sha256 "e010dca0186fa5ead721fbb86cefb68a5faacb58c706a01e88a5a98adaacf537"
    "pl"
  end
  language "pt" do
    sha256 "9eb1d036bef4ab879c6a1beb3eca69cbfe9545fc309e7fe4560c81c0e7697299"
    "pt-PT"
  end
  language "ru" do
    sha256 "a624fca17bcd6bc053ca91a21c98ba193f4ee9161976111e943fdb691c129cd2"
    "ru"
  end
  language "uk" do
    sha256 "ca78b8025bb4d82538c746c58fc2da054856f8f62cb74108f0b393331d768ad8"
    "uk"
  end
  language "zh-TW" do
    sha256 "ceaf33d16c79e659075b22a243982cc014784e7bf09678e10183ca5d7654a59c"
    "zh-TW"
  end
  language "zh" do
    sha256 "0e4568cc90abdbe37dac9c9f64b329af7ff3707bf477300cae71ca3efbc09839"
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
