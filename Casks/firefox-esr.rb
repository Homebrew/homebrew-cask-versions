cask "firefox-esr" do
  version "102.8.0"

  language "cs" do
    sha256 "cddcb7017bab6cd5702dc44420effd00cdc29e8e2bd064fc75177b6b3fc4bd59"
    "cs"
  end
  language "de" do
    sha256 "50a6b87b1924196f7e29967606ff9a4dfc745cd5a657954a53959592c8487626"
    "de"
  end
  language "en-CA" do
    sha256 "10cc0b19fe5a3dccf4f1b4b2f472ec7325010dcf30b0221441eaca89ee0cff5b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5383cd2b6c061fa020e062c9b5089167919e951564244fdb2ae18f90f15aec11"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2cc09ddb275c3f900ce2e48bc0628373b458d76852c6508097bebfc5430009b3"
    "en-US"
  end
  language "fr" do
    sha256 "e6a50a1e3915b1bf09b6f899168432c48799a2d09b32805e96a411fb4a4d8ed3"
    "fr"
  end
  language "gl" do
    sha256 "ab504ebe11b15104d57127458b2641c5f207a0658f55d61e1c746e90eb772d6d"
    "gl"
  end
  language "it" do
    sha256 "ecaee74afc99fb9331f7cfc500ed1338445c934eb6df86ca250a65bd17980ffd"
    "it"
  end
  language "ja" do
    sha256 "9fe7bb95f024aa73ceacf54ccc2083105b129fd278b850090036355f18737198"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5f824dd449ed9e760bbdfc997078708494b7ec32dea56ee55896352be722d249"
    "nl"
  end
  language "pl" do
    sha256 "051552778aff6f3095eb39b16cb900cd0be48d8ec2ef1d99fd7c7da2bb92d8fa"
    "pl"
  end
  language "pt" do
    sha256 "70ce58e7b7dbbe97be664f92d84dd7b4e95e42d35024f9f44febb2e4145d3c80"
    "pt-PT"
  end
  language "ru" do
    sha256 "61e73b4877484332dfef9b60d7cd843e82ee74b4212e0393eb440dbb0aba9502"
    "ru"
  end
  language "uk" do
    sha256 "1a167ce89ddf3bda856ed5dd19e7dec57aee9c3807891cc9223b8ad2aef0473b"
    "uk"
  end
  language "zh-TW" do
    sha256 "381e0c1c0243085f25c2eed9ef02537c1dde0876d6017232c9e9da60e6f6c746"
    "zh-TW"
  end
  language "zh" do
    sha256 "cb056c2dd47a66fcccdb69ca11d0a43694455c08669790fc2e0945504ab9e54a"
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
