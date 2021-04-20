cask "firefox-esr" do
  version "78.10.0"

  language "cs" do
    sha256 "6da4356e2dfc3c069ce5892c7e269c1029fbd6bb11663e4c0cd125c36b62730d"
    "cs"
  end
  language "de" do
    sha256 "761c6d9559639b669c8a5398d3e776125365a1138d9322103b534c34cabb78b3"
    "de"
  end
  language "en-CA" do
    sha256 "9de3374dbac3b9e2bc8c0f0c8ddba9e74a71a3691804406abb623bbe98ac36c4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "49140d3bef51023e712a2b6c470b40c94d07c1bbc98c4416f608d89eb75cd388"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8a1e8ad6784296723582dd0f6dc27cde18ee7719ae04d3227a0e86f97a9b1bd9"
    "en-US"
  end
  language "fr" do
    sha256 "3d60090bffecf77115de99007340c24dde155db82cb31eaab99465123b347989"
    "fr"
  end
  language "gl" do
    sha256 "7405fffd7cdff4cf6f4b8d3abdc75668c81cf596c2c7fe8e5a8254bfe842f0cd"
    "gl"
  end
  language "it" do
    sha256 "0b44aeac3eb2358fafd72d0a1b06b9607ada33bbd0f0ff497f32b938316040db"
    "it"
  end
  language "ja" do
    sha256 "873e0d20712c022706c4a72d790f34901c35957ac02b623895145ce3bc9e7459"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fd4cb7a55a893a3adb0ad7baacffd7da24ffc09a63aa7d9c393477221508bb42"
    "nl"
  end
  language "pl" do
    sha256 "4ea63b10827e0f0ce6d35da34d17cfd02000e4d4dec1c2c7b651884e21e0e02d"
    "pl"
  end
  language "pt" do
    sha256 "c2ac82a4f47eedd511ef5ba6b216afd7de2ca764f5d1aa40078411a6d35abe4b"
    "pt-PT"
  end
  language "ru" do
    sha256 "6f51b4eaa0817048609a050a756fef13b3d8ea0c41bc366dff839f47f1389049"
    "ru"
  end
  language "uk" do
    sha256 "b6d964559621a61264eaddef0013f0c3a9eafbdeb8f2869901a0f0da87959518"
    "uk"
  end
  language "zh-TW" do
    sha256 "bbaaa622b91ddde18073d9500a9cb02b59a1d9549e6bc1080e457844082d2660"
    "zh-TW"
  end
  language "zh" do
    sha256 "a27de31e33bfd85267cc6f4c02079f06036fa6757f7d9fa0eacc6046f3808264"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox ESR"
  name "Mozilla Firefox Extended Support Release"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/organizations/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-esr-latest-ssl&os=osx"
    strategy :header_match
  end

  conflicts_with cask: [
    "firefox",
    "firefox-beta",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
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
