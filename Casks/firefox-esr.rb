cask "firefox-esr" do
  version "78.13.0"

  language "cs" do
    sha256 "248d5cad2ea713d92bf653ea90335f78b77215178fca2ba2080cfa5f76554e2f"
    "cs"
  end
  language "de" do
    sha256 "65cdfed5e847858321ee799250ed1d6cf0a3ccec4869489588a34e28065856e9"
    "de"
  end
  language "en-CA" do
    sha256 "61d740b81067497071ef4c557090c906383e118bd2d0163e288e35e65e723815"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6eb62ee7c0e61e3293ed0e19d46a974fc1f7d40a76c0c3384cd9da61f2649f67"
    "en-GB"
  end
  language "en", default: true do
    sha256 "74fee79109b1f1c272afd296f8f40b74bfaa34d1e17d7e49aa0e1f785e2dbfab"
    "en-US"
  end
  language "fr" do
    sha256 "a22ae18c7055964d8504a0444fbbe7ac36786887e3e3eae899ef83299a416ed1"
    "fr"
  end
  language "gl" do
    sha256 "e7d26e1412253dbe26e30722b6a87561cbeba70bfe5310a0e346dadc7acccaa0"
    "gl"
  end
  language "it" do
    sha256 "da89ea7885ddd8c39159a4cffbd881f16b3c994d03a61ba8c01cb81e2c397672"
    "it"
  end
  language "ja" do
    sha256 "5a95cec1debdb8c0b00a71f830d2b2bd22c799bb8618a5be078a6353a34d5a43"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "aa26ada2b966c9304b9270c38aa978d53057a2f67148134a85a616f15808361b"
    "nl"
  end
  language "pl" do
    sha256 "01c72e56d19c5829ba143d096981318794a6cd93ced19704d2a8baa4d739869e"
    "pl"
  end
  language "pt" do
    sha256 "e1b4474cc1b2dcf4f7da299c4a94419d123ba8982c3000edf045a1e237285b2d"
    "pt-PT"
  end
  language "ru" do
    sha256 "18c8255a3843ad33b10501ed7c4e18257989bebe81b9023449d93794b1234047"
    "ru"
  end
  language "uk" do
    sha256 "ecc6b8ef65eb7a40d1d2ab1268756af4f33d2b91dfd9a58b95fd14ce834d4930"
    "uk"
  end
  language "zh-TW" do
    sha256 "97df4eb487fb38e7dd90a68069d5656f4cc872ee8768ca8ebafb37186f395d3c"
    "zh-TW"
  end
  language "zh" do
    sha256 "b1fb13e28d06ef83f565d25f32191ab755180c1e620143f79e9b9bd0279d8241"
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
