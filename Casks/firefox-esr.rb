cask "firefox-esr" do
  version "102.7.0"

  language "cs" do
    sha256 "f4d94095ccdb18ffd25cf58e0ec606b0e576c6d3d7e4fe09d32889e655058c30"
    "cs"
  end
  language "de" do
    sha256 "601de546449dd18b4cf82b35553877f38bd6049eb01175c40f0a23f7a53d8f35"
    "de"
  end
  language "en-CA" do
    sha256 "d906fec1419f4dd1eac43b1cf6367decc00bc6232e450b39b54e4bf82b56523e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "91060027d771779a9ad8dba26716b139fa5621bfd88d3ccbe788cafed3a3f3f4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "710f1cf311b4024b50e4a84f63a9eb8dfd416ebe2a627da6659c5a2bb50f9b28"
    "en-US"
  end
  language "fr" do
    sha256 "a31b0e8ebbf7ef5a85cf10895a0fcf567f815ddac9a45bdbb5a9279c3bfe43f6"
    "fr"
  end
  language "gl" do
    sha256 "855e285fc1f54efd47f9021a1b5cbc06e3c0910212758aa61ea57134b6415d28"
    "gl"
  end
  language "it" do
    sha256 "817562fc5a4c0938cff9228b1d49060d3d7a190afe309f8353fffe5afbb80769"
    "it"
  end
  language "ja" do
    sha256 "8ec84cb74f94e01a22e51eac7d5c1c4666a15c4571d584dc3a85fc8f8695a7bc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "864de1d80c9e08aea65e8dd7d94c9c389072971ebd01001f1a2a4a98b88a64f7"
    "nl"
  end
  language "pl" do
    sha256 "bb4dcf814d2106c9c0cc5fd25f313335c68981800472c1a9dfd28d877ac02c64"
    "pl"
  end
  language "pt" do
    sha256 "6fa8ff285c5a02876892fbc7e6729140ad3d36d5ab4fd5e178ea946ced9c1193"
    "pt-PT"
  end
  language "ru" do
    sha256 "607ec0d450eba74b0463691f68970582b50406e379f71281cd49d293bfb325b3"
    "ru"
  end
  language "uk" do
    sha256 "8d5886c9381b80a6a67dcf9820527466f6ed95b2e7a4b9e57a68062f8b2d2622"
    "uk"
  end
  language "zh-TW" do
    sha256 "1d905aa6662a241af0909d84f1812195df7262746e02d392d8d0c5a5defd7744"
    "zh-TW"
  end
  language "zh" do
    sha256 "edfc21f439283ddbb724caee28cb9064403970ee706ce3daf831e0d3ee8eac97"
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
