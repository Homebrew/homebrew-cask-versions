cask "firefox-esr" do
  version "91.7.1"

  language "cs" do
    sha256 "3eaf392b3178444f272eeb159cc052a7ab09c3751a3e4182a0a2802ac9296f01"
    "cs"
  end
  language "de" do
    sha256 "2d9f5cf216c60e961f2755c5188902859a563e62e9ee78d1eafe835523a335d7"
    "de"
  end
  language "en-CA" do
    sha256 "3bcaf31033c8d9d85bc09e296a3a1bbd0829dc3c4d21bbb23a5203366d6a25d2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "186b8c2052f1444b5d714a7317428dab73cb82e5c0562d2065b26b8b9415a2b4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c617955614a33b56fcde98f62d6fee4fa4f2f4f8e6302a8e8dd2432f4af197a4"
    "en-US"
  end
  language "fr" do
    sha256 "cbcebad9f756ea1b94e62a88de9a161b02fe8f534d17fc9fc7b6a6e84be31b8d"
    "fr"
  end
  language "gl" do
    sha256 "bab7e070f3f7f0df6b580bb8ef7e4f4fd4a1fa75c51c73ef8727504c4cffa4b4"
    "gl"
  end
  language "it" do
    sha256 "b580fe8009d2092699ede9962ff57062d3e4343baaf317c53021047be8ef38e0"
    "it"
  end
  language "ja" do
    sha256 "0e51a9cd14736aa631d07b177ad2b4be1977f6e708f08dbad9071d5825441d82"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f7df53c5ad0de208c3d6ce5ec5c0d42643d54a3e49815fd4cf311cd34835a1d7"
    "nl"
  end
  language "pl" do
    sha256 "15e34d24145ccb130882e9bd3bc107598101b3273795bacf84d2bf066527dc16"
    "pl"
  end
  language "pt" do
    sha256 "3a623252a8dcabc196307ba5eaada1e3e8d037736244964a4e52cfb22446607a"
    "pt-PT"
  end
  language "ru" do
    sha256 "d96e8fe984c7d7805a8210a1240a5669a0ee244bf118bedf0423ce5322d882a8"
    "ru"
  end
  language "uk" do
    sha256 "20c88cc435299accb58e10738dc293514b3db3793c229d569d9e8791f650bdfe"
    "uk"
  end
  language "zh-TW" do
    sha256 "7bfae1450b32ac6218ae5f281690da1d779f9b251246398c1260c765e2df75b0"
    "zh-TW"
  end
  language "zh" do
    sha256 "d48df15a414e674aec1b329ab8021caf337d8debe4728e4cd95b144d4d0e4650"
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
