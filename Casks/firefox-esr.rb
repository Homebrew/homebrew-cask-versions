cask "firefox-esr" do
  version "91.2.0"

  language "cs" do
    sha256 "58ed0838da835004b9344e82a9fbc06136c32949dbcc2145014d5b465ced53e3"
    "cs"
  end
  language "de" do
    sha256 "da1f5b51978bbd1575da859a106ea3369f7a1ce6bcfbc7a1861df23f89364fdc"
    "de"
  end
  language "en-CA" do
    sha256 "e74124904893e0f458c384a531283eacda1d39988a1df82d12c28625e83489a1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b5a6dea5c3852e1053fb64619549e06833d0a845ab154cf3e3532b5bd70035d4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "79fbb64232ca63187177d6dd488b8a39f9c055eea6a0a512b586c8a2a16e8131"
    "en-US"
  end
  language "fr" do
    sha256 "74bf521233d62deeb642b39deed5c2d066ae04896474d3466ae08abdeaff8a8a"
    "fr"
  end
  language "gl" do
    sha256 "6cfb985e52a2b3ee94e1281844eba4ebd33446e131ff7731b7599d3968761045"
    "gl"
  end
  language "it" do
    sha256 "191d1ca756bf5fdc398083917a646a8eaf24a881eb8f65b4ab97da232ad738d8"
    "it"
  end
  language "ja" do
    sha256 "2d200205de9afa1f3ff80333de732dcea5297a4a2246132ceded769f751aa37f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "131dacb9d74165a27ccf013f3d4c3cc68c3ae03f5d78e90c1cba49d24191b8a4"
    "nl"
  end
  language "pl" do
    sha256 "0189503ff4b192c251d887b51069ce15e534d9990ae502aaf3b87a1d5cc41d2c"
    "pl"
  end
  language "pt" do
    sha256 "d3a12a5d76c6333ef880a76fe5a6fd5e9a7c971dfd73f517a999b61f3418fc81"
    "pt-PT"
  end
  language "ru" do
    sha256 "edc530ce9d384a7927b913b5572cc80ccd794817c2fa3d375fa374eac5dff90f"
    "ru"
  end
  language "uk" do
    sha256 "696cb60fd8b6650f4c38674e4785b80a14ad9b846875e3bab3199fb87b7bdc8a"
    "uk"
  end
  language "zh-TW" do
    sha256 "068f06921172e6f8460397d273767fd8b0aabefb622eea7c50fe7e3dd5a15f08"
    "zh-TW"
  end
  language "zh" do
    sha256 "dded51cfe9846abf2b081081fb4e4ed216e97d493aab637d1b630840b9101379"
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
