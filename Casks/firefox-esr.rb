cask "firefox-esr" do
  version "91.0.1"

  language "cs" do
    sha256 "8406972b5fe9ee2af34ca3cbeea0f56b1848c6056b6b05da076ce5d807ed42ce"
    "cs"
  end
  language "de" do
    sha256 "b0f7c17f6a606757ac5f63d5d5f1580051d33687f3b16ca420d5d29c8c209965"
    "de"
  end
  language "en-CA" do
    sha256 "011ddaf983346087e0e93e636f2792c6543d81bd3490197d80a638dba7affcf8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0e4b20acb2cca6982d09e3c58138510e4351a671f262bec4a2615397e5a6a81d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "85e1457ed61d23e4d62c6c12c7d1aa1b5e45ec7547cca78478ef449494ad2381"
    "en-US"
  end
  language "fr" do
    sha256 "68168f10fdbe1cebaf0b37e0ac53e556a15db27d0e1d7c14bd1e865491fd3c35"
    "fr"
  end
  language "gl" do
    sha256 "e495cc399ef3476df290a184fe92d4a183af200ee5249a630d55958cc51c9a41"
    "gl"
  end
  language "it" do
    sha256 "97f65f5a425152b55bd75e3bebb67f7a07fe9b9e7ad9dbdda7ca542b41beb876"
    "it"
  end
  language "ja" do
    sha256 "7139f635bdfd08f90ad424b32f2e9bfc6d38ab6a3eae30009b650740fd0a4aea"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f0f75c833eae772cec460da61f82714b19d44dab5c4082bc4eabcf1869d42768"
    "nl"
  end
  language "pl" do
    sha256 "2da811b2a2e1c34558546ec56c86c26684f87aa6fc48427783765d1e59d6f9b0"
    "pl"
  end
  language "pt" do
    sha256 "9b8cf113336bf148dad603bb9df4bb7ee720471f91daa2104445514b739c9e4e"
    "pt-PT"
  end
  language "ru" do
    sha256 "de974f728887ee22f2a7fa4b4c0f1e75f2f49add00bde19d57b2f03101473b2e"
    "ru"
  end
  language "uk" do
    sha256 "dbc567eccd9559306346f27c4f5b580bad2e7f173edb8a624039bba6c3561fba"
    "uk"
  end
  language "zh-TW" do
    sha256 "f92478f0bc76b1a48ab8b43f33fa0f48d629f49ddbf7ce414b140776ef381ea8"
    "zh-TW"
  end
  language "zh" do
    sha256 "7d56743e6a3c7160b49c5f3a8950ae730f47e47ab7fe8669c740376bef4b144e"
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
