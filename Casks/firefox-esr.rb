cask "firefox-esr" do
  version "91.9.0"

  language "cs" do
    sha256 "4c87095dd81c87fe6d25457c8dd55d322d26c15eb81e99a3b3e573f8e70e80dd"
    "cs"
  end
  language "de" do
    sha256 "8c0c8ae5d5e8b0747ab4367dbf5dad5e1ee22d0110273d7ed786d5fba41bd02f"
    "de"
  end
  language "en-CA" do
    sha256 "664b30ee09c2241e632ecdefdb1eb3a54db4ed3f9692794cda2a1f4e8295b667"
    "en-CA"
  end
  language "en-GB" do
    sha256 "710b686e990c58d10f0253b11f00c9576a33129532bc4624c83453809b2e5a80"
    "en-GB"
  end
  language "en", default: true do
    sha256 "670683ea0da2a66b29eb732b75049a01ae43117339917cc36767018518953f69"
    "en-US"
  end
  language "fr" do
    sha256 "0f3d041a714822fde84bbfd5de2b9b20c59292b98e9cdcb211eed32eca9ba65c"
    "fr"
  end
  language "gl" do
    sha256 "f4e7e2d77a57371d0b44151c483e8b29fcaa8de0498462f331a748428319fbb4"
    "gl"
  end
  language "it" do
    sha256 "7af7ff9d1bd5bb2bee435b9adf8cd7bbe39cf363602355a18bc4bfd3e78eb996"
    "it"
  end
  language "ja" do
    sha256 "b7cba9e33d5e45e9267725b1100f28fc9ea71a67a2b20292ab38ef83dc16da61"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "544aa80128dabbc6d5bd0704ede51d4654d6cd447c66aab63046477d8eabb163"
    "nl"
  end
  language "pl" do
    sha256 "f8d94dc3e2fc280423031bb2d37416ef9d85287ea7147e8893f9489e00eb384c"
    "pl"
  end
  language "pt" do
    sha256 "3fe6f6e4fe7f1d59e61ba88426ab4097466279664050ce289fd2f2e673640887"
    "pt-PT"
  end
  language "ru" do
    sha256 "ec41aed8aed0646027c479c943ae3e474c709f87f7d0631a16d2c84329c4fee4"
    "ru"
  end
  language "uk" do
    sha256 "6d2c8e95748a0f982d6de51917c05ab607509c2f26d40d3eb0d307b39853405e"
    "uk"
  end
  language "zh-TW" do
    sha256 "735d70f476c40b561ccc8c338b3616b450fea01394daea5574c355257d667d13"
    "zh-TW"
  end
  language "zh" do
    sha256 "9fe3a73f7a9f06d2f703c0192225120e268e287699b447d15b76c9ff7b3f9ea8"
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
