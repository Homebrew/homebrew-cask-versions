cask "firefox-esr" do
  version "102.4.0"

  language "cs" do
    sha256 "c94b69f9bcea5d79af75297c8997196e747801430928a1439748794644fe0068"
    "cs"
  end
  language "de" do
    sha256 "5fa52f36110a77cd015e8b1c5a620c10fa3ed56da0f5d8f0a88052da70b55dcf"
    "de"
  end
  language "en-CA" do
    sha256 "6c32ebef1307893dd2d2980d99efd9b48e28a35f5d8f94d6a76373ee40989137"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6e58c0ba190d7f7a30d3ff2309eb2624ff7867dd8b378d763c347f95caca8942"
    "en-GB"
  end
  language "en", default: true do
    sha256 "47ba4ddfc3d709a6de078839b676fd7cdbb673e41361cb7570925b68e9d9583c"
    "en-US"
  end
  language "fr" do
    sha256 "411d238d04e350bd7c83bba34065b02cd7787e7621f5bf34b9e1fcc9633f9af3"
    "fr"
  end
  language "gl" do
    sha256 "9aad3952707eef45d2ffa5e3c95358cc01aa846c2978649c113e659cf515c8df"
    "gl"
  end
  language "it" do
    sha256 "b5609231b6057ad711a127e366a0a2b96c1f2feebd31d108b8d097cbc73656d2"
    "it"
  end
  language "ja" do
    sha256 "8e865e6c12b6228ef721409456a7951adf83fa04bb35eb79b509de7706ed25ce"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "16fc9311fd83923147a7cb9f841bf7fa865d58420a6bdddac8e6c82b86b07564"
    "nl"
  end
  language "pl" do
    sha256 "40a7d3bf3fc26997ab8f6f15e6cfd16902f0e52e4744ef50358e3b7ac4419ae2"
    "pl"
  end
  language "pt" do
    sha256 "da36f8021908056127b6183910c3cb6ffd09d0739b4bf016a995ce7a088f5c0d"
    "pt-PT"
  end
  language "ru" do
    sha256 "82d8e41d37ac3db736cd71a4651f968e60ddcd51f54ec78e6138b6d694d9fcb0"
    "ru"
  end
  language "uk" do
    sha256 "d74122b8f7568fd758f6e97f87d15e0021d1a29ce4371cd6f343dbd911d46c90"
    "uk"
  end
  language "zh-TW" do
    sha256 "5c3c070db906d510439a503c5664570a66a895c2613cb0cbde556032bbcaf689"
    "zh-TW"
  end
  language "zh" do
    sha256 "89333bb116b78f95134ce1feac945f33eef21cefe12a23aee98a8cf0adca11f8"
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
