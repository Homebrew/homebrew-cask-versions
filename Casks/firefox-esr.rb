cask "firefox-esr" do
  version "115.9.0"

  language "cs" do
    sha256 "f194a68907836ee2325130f03d5fce01c05f357916addfdba3c24a07b2406647"
    "cs"
  end
  language "de" do
    sha256 "a593d92c1036c3fd50bb47741413a236595164b96c9c89bcf49dd33ff74640b1"
    "de"
  end
  language "en-CA" do
    sha256 "b42032653940fe4e850474c3d36f629373b52301290570625ecf756dc4964d3b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2227edfb8dde3ac6c797ba90a51d937fccef92d6931fee2f91a9a39ef502f5f0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "abb21456408776fd5f0ba7afdc2d0cb4281c688366f8453172c6656954321a51"
    "en-US"
  end
  language "fr" do
    sha256 "78a9e208e07c03befa55b0d50fc90fe3aa2bde126d51763f36b32ad8c784e655"
    "fr"
  end
  language "gl" do
    sha256 "bb37cd02d3bfd3c1245a4bf1acc5dcb619aeca6b4c13f8f870291902a332c3df"
    "gl"
  end
  language "it" do
    sha256 "f1ebe543917456ddff14dc62dca4e9e98546a258b7f28c9eab891b439bd51340"
    "it"
  end
  language "ja" do
    sha256 "7d2226a9cb2523a0d2878e71d2fcb7692a9726f158862da41f2f78a51b2b3bdb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e1fdd424588e0a43c4fee5578aab620e0e1ceaf560b30db4ccf20c2fdde57f6a"
    "nl"
  end
  language "pl" do
    sha256 "0dd7fcf31fd3155e51b481fd39c90fa4005493e42cc0447717adc7b6c800dcdc"
    "pl"
  end
  language "pt" do
    sha256 "9edbf75e37c0aa877e643d29688ee94d57d06cfdb9599e83bf9116d3a97cf157"
    "pt-PT"
  end
  language "ru" do
    sha256 "5b07b1974324311900ea59932f422e0fcfebf42f21c9013d6ed58e07b736d6ff"
    "ru"
  end
  language "uk" do
    sha256 "7c0dd306315261d3b833e2a345b08d9b6d3723b841a984a8efcd2d0c816dfc3c"
    "uk"
  end
  language "zh-TW" do
    sha256 "22845b164e92487d5d0e5657da65c60870b7d136bcc27768df823c2a7f65beca"
    "zh-TW"
  end
  language "zh" do
    sha256 "35e7668a8d4d966b07d070520c4ffe54e551d44bcf89243e456626a272bb92d2"
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
