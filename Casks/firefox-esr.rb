cask "firefox-esr" do
  version "91.5.1"

  language "cs" do
    sha256 "5e990dd66384fc5dcdc74bbfb6ac0da6537e255df644465d0108a91e2aead7aa"
    "cs"
  end
  language "de" do
    sha256 "14f25d5908c972d3ee94b288eadaca7401e2db68b43458d974e5a61acf02fa0c"
    "de"
  end
  language "en-CA" do
    sha256 "aed308e3cabc96b913827b44eefb106a3eb193f90e358b9ea4746778887817ba"
    "en-CA"
  end
  language "en-GB" do
    sha256 "153c3f030581c61ae06c38b122d7cc7a8edb2f99b964f26c9c190c4555f67d9b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "573d3fe8d1d1a85306bc324c52e495efb11c05cd4e9bd97ac5a7d8c887f30b90"
    "en-US"
  end
  language "fr" do
    sha256 "8d846b7f89b26c82b70900878170622c9ce0322d4422337c98f7aabde56c8a35"
    "fr"
  end
  language "gl" do
    sha256 "223bd866238d2eb5edfd1e5225a1a0e9f272cc2441392835181da76faefeee56"
    "gl"
  end
  language "it" do
    sha256 "f8a7d88414aaa63795248bb4508aca6c8877d49cc4d8f9cb38c9e26699803df8"
    "it"
  end
  language "ja" do
    sha256 "39e80a48dbbf849736bbf21925047636e10eff7222db07202c4872624e1c0af3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d7a6f8ca68e69fbe176b7f5a0bc05df28544e66c6ec7ac9a184938a0eceaaabc"
    "nl"
  end
  language "pl" do
    sha256 "9e853451d4864d9170440f9c9aeb6ae6e93b0bddb127ec81a00329f2af621963"
    "pl"
  end
  language "pt" do
    sha256 "3cfb55fe0af8a398c035f76af9462528aa0527b8716829dc3637a696d5f78829"
    "pt-PT"
  end
  language "ru" do
    sha256 "81973951a338961679768400051ae5992d0bbf5a5338f46a21da12bb75a16d9d"
    "ru"
  end
  language "uk" do
    sha256 "00280c939c33827e3b7a0739e5e65828c5ef43633640d91f6aafafdc1279c7f0"
    "uk"
  end
  language "zh-TW" do
    sha256 "8c1cf902092f1ba78d211864731650bf4b83336f92faf631860fa3aa6e501ea4"
    "zh-TW"
  end
  language "zh" do
    sha256 "ae7fce8a948e290d8e06f52ed350f130dbb497a497b12eba67a9cb46bcf36580"
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
