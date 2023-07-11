cask "firefox-esr" do
  version "102.13.0"

  language "cs" do
    sha256 "6d50c250b13b1e1c6258f1c04767dad7c8aa50223f2994876c215681d1f56bef"
    "cs"
  end
  language "de" do
    sha256 "eb55a27f4230a5a29fbd43fbfe70bc2060cac586354ce916435bf5e3ed8a5850"
    "de"
  end
  language "en-CA" do
    sha256 "815056206045386e46cbbf85f3d1c41e8cf962b121782972d6663c637f7774ed"
    "en-CA"
  end
  language "en-GB" do
    sha256 "68020c4d21295f03b2b70170b92743eb4424730dacd1952ef12eee13de02c2d0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "124d9757f12b0ddfe9bd225477e2c67a29716cbf81b7781efe52e2ce4a92d127"
    "en-US"
  end
  language "fr" do
    sha256 "3fb58c85e5776f9e4f395cc0ba98c61f5a1fe32f18b0fff308dad4ed00277471"
    "fr"
  end
  language "gl" do
    sha256 "9b722278994741c484f27f58f1af8acccbd67c3b31d19ba351df8e0fab547947"
    "gl"
  end
  language "it" do
    sha256 "b1e9927ff17145a67357b32cb0da5f105348f9f511b2f09e1a33e913f09e9cc7"
    "it"
  end
  language "ja" do
    sha256 "cd2d00fbc8d309c13c73f992da553f02e86e932978d4008e14107ecd14ba0af2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "baa592f1c1f2bc2d904bafb7bf4dd9b9dcbbdbcffa81c354a090f7383c5c3fe3"
    "nl"
  end
  language "pl" do
    sha256 "eb4348bdf20add643111e15cbae3c24cfe1b8ae41960a956717789199f871447"
    "pl"
  end
  language "pt" do
    sha256 "a5bf772015f3c4f7a44e6af445f6315b66152a1134b8e91816db627f4050a139"
    "pt-PT"
  end
  language "ru" do
    sha256 "cf096e44d8994bbdea478af47a38bb429555ec63c1ca153987309e3b82596394"
    "ru"
  end
  language "uk" do
    sha256 "50f81dc451d9d25902997b999598312aa291c512a0de0f7dbf0c48a6b0e597b7"
    "uk"
  end
  language "zh-TW" do
    sha256 "cac294e13d102149f27ba8c26cd9f35e15823cca2d17c37c4e88b2f9142100f7"
    "zh-TW"
  end
  language "zh" do
    sha256 "8f064217212d510a6c200a13fdff1ff2a9910188ceb2a77dc338074096ef281d"
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
