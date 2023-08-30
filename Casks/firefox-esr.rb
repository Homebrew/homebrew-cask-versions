cask "firefox-esr" do
  version "102.15.0"

  language "cs" do
    sha256 "162c062889671aecc5896f30f23820fe0dd77b6bb4b043c9b09d75cbe19425ef"
    "cs"
  end
  language "de" do
    sha256 "34e5470289df91a1e868c1b55a930159e24b8e4d306e375237b8510b848b0e2c"
    "de"
  end
  language "en-CA" do
    sha256 "4309cb7ab8ab5a82539d99c8138ea00c4b89495c9995961b2f659445b0a18d95"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8612ac14297af8f00a89884023a91253313c47522ba140c2c8c886296a7579cf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "53e00c89d081615eab4e30008380967669c1e48c5ff2f800b880e28e855825e8"
    "en-US"
  end
  language "fr" do
    sha256 "ca69bab7c59e79af2db1cdb1bdfadb4a3054ab704873eb291d1f5df62617ef63"
    "fr"
  end
  language "gl" do
    sha256 "4dd8fc98f34fb49ce5a77be473c8a29345d6b895d3c83bdcf360bf1c2ee86f24"
    "gl"
  end
  language "it" do
    sha256 "8702e869a94ff3bbfd610f603edd2ff4887f3606384df80869f542a55f1a2db7"
    "it"
  end
  language "ja" do
    sha256 "4fc68bad896ae85bf2301ede8c2bbfb31104b6e253c712690af00ee05c823b31"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "eb65c47b444256d7f1db446c507eaa22e37ab5707fc61424a47e6d27c3f96b97"
    "nl"
  end
  language "pl" do
    sha256 "3c8e376e05f326dcfbb49c28adf4def66c81cadcb4fba2c964c5ed0629e3f380"
    "pl"
  end
  language "pt" do
    sha256 "583df57ea54ffeac01986ef51176ee8979e346b21a884142e73d0e41abf77ceb"
    "pt-PT"
  end
  language "ru" do
    sha256 "a46767c078039f84191523f423d06464c0a4e718e8c4fc78a775205281dd011f"
    "ru"
  end
  language "uk" do
    sha256 "a8b76db68efa38f3c38c18c6a24b2408cafd9451eba60a4786476b06e9e824ac"
    "uk"
  end
  language "zh-TW" do
    sha256 "637b48afb0237ec2705ce06c5e8d8b1dfff2bd3159d48641edd2ae09d7715686"
    "zh-TW"
  end
  language "zh" do
    sha256 "f87e17d4f684c18c37d052d1ec8cd5408390d25d744b409c3ae6e79e97d14928"
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
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
