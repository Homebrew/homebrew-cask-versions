cask "firefox-esr" do
  version "102.2.0"

  language "cs" do
    sha256 "005af2905fafb54aed52e05f381e1f432685a4d21e6fcbab46889e74ef5b6ee3"
    "cs"
  end
  language "de" do
    sha256 "d63c628b8cd654645ce61e51a0ab4be91d042e194debfd69658ab0f207a0289d"
    "de"
  end
  language "en-CA" do
    sha256 "94ff77ee35465c8266c55cd87f9233061dfa75fd9fcce84bd3b496b8edcf8e89"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cc4f018ebeb068d03d6ffa264845b52d7439f40b22ad79d3450ecd9e5bcbdc73"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dc38d3283f60baf9abaa6b4620ff71ad6920b82925bf47db0624849b669ce425"
    "en-US"
  end
  language "fr" do
    sha256 "ed776242027cc2aa47e4cb728eaefbee4ec52ae52b010d8a19c40b19256f2da9"
    "fr"
  end
  language "gl" do
    sha256 "4fa72133b5c87e6b6593e7af96e6ec209ef860cb969abb8a07f38f98b9e756e2"
    "gl"
  end
  language "it" do
    sha256 "417ee74a2e05b1f2822a55b8f8907633a9a084de485adbc94a65fc2f978ed8a2"
    "it"
  end
  language "ja" do
    sha256 "d256480849727c1187adbb047e838e37ff43eadac3a20377e9ec1867a0b235bc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8ddd22e657606f1e1b4b49ded5c6d20379b4b3d26d69662c8e5ee2c3408bf493"
    "nl"
  end
  language "pl" do
    sha256 "bcaca364eef0c69b6e6c3b421a0ff1d9129fc270e58b590517bb6eda0103dd66"
    "pl"
  end
  language "pt" do
    sha256 "a356e64afb4afab69bdf5d4bcb02a1c06cbf1adc64ddbff7485f6e04ae4c2d7d"
    "pt-PT"
  end
  language "ru" do
    sha256 "be3639ed33d13d8ebb8a86cfed5153dd49d3e4f2099f5a1900452c07d416293e"
    "ru"
  end
  language "uk" do
    sha256 "201227232fe41ed98cb1b9cfe0df036525c1f4ce98ac4e051f052a3e7bf05816"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc8c450d9a3225649e79bf9c5d1dc5bd9756f2b2c517781b4d9f9c51244a5860"
    "zh-TW"
  end
  language "zh" do
    sha256 "8e89db784fd93279d7b63e7ad656ef3ea1f00207d97a4c1e0624d024c963252a"
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
