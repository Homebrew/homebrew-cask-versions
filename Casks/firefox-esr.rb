cask "firefox-esr" do
  version "102.1.0"

  language "cs" do
    sha256 "323bb4cd5f9d51b3f3130cb5c765641abc85d3ced941c2d2a806e4e0bfeb7919"
    "cs"
  end
  language "de" do
    sha256 "2833dd5e1323a691c3ad0a5840c4369b0e4e796d1b17b3b62dab515411eaf7b7"
    "de"
  end
  language "en-CA" do
    sha256 "4281fda08bd4fb8d0b8444e6e22a13e8466ef70001aa8a4d90640477b91e220e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d67b69833380836ce92d93a8ed7ba7d28e48fc2f8133c60ac0d008f27f71038c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2a9fd35783a03599c8a6ae8f06f5e98b4cbc59dd0b6113459afe1e7b3bea753d"
    "en-US"
  end
  language "fr" do
    sha256 "6b3eded4fb87945136ac75c0f357dc6a218087fbc93794519be1cf5acb050904"
    "fr"
  end
  language "gl" do
    sha256 "90f0bb2f312db6e9487da73b630e614f3f4b5411f435d749db81f458045bbe31"
    "gl"
  end
  language "it" do
    sha256 "6c22f8dfce5ecaa1778724b830fba5ac5a276d9b0309d4b2538c593291c6baa3"
    "it"
  end
  language "ja" do
    sha256 "d3765b94f54448d3c6ff3203f401229fed5ae45db7557451c48517cb4dbf08ec"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8b531d8f0983c60159cf7eba67503f4adb94c6140659531efa3eb813ab32ef1c"
    "nl"
  end
  language "pl" do
    sha256 "ed3c62917f27de5282ab7e4fc5b95006eaa31d6794cf176160cb9283b392de35"
    "pl"
  end
  language "pt" do
    sha256 "e24e8fee4b818f5ae7f5ac1a41a8b8d7a4fec2cd74deef5f413ed2d5f7abe7de"
    "pt-PT"
  end
  language "ru" do
    sha256 "6ac0a1888f422368a1d48554be70b90f922c3a2bba82ecac78d2cf5eb01e03c4"
    "ru"
  end
  language "uk" do
    sha256 "87b720ed0158802af0fee7b3b319a0e231764539c417674e0cc9d1ef8aed6b5b"
    "uk"
  end
  language "zh-TW" do
    sha256 "fa9056d29b47f3f133401594cbb0ff6c43d43bb1d06a23b68761ca3f93409bab"
    "zh-TW"
  end
  language "zh" do
    sha256 "98291139b7ef5cfd8d80db5537f5016aea0552acf04c7cca5dacf1196843b457"
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
