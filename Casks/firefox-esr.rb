cask "firefox-esr" do
  version "102.0"

  language "cs" do
    sha256 "19c134a86d9a64cad185452dcab57d7e72245b5c765c2a30e32ee58025ae120a"
    "cs"
  end
  language "de" do
    sha256 "05ec0dcf756ed14b2cfc71cbf94de82790fef91757b986c78b8a2d90ae3b26e3"
    "de"
  end
  language "en-CA" do
    sha256 "0606b1d3b90bec3b5e67fd75fd1292a857d3021a8e87bef5c265fd2f798a954f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "24ac99380b96d51109669e40360dfda78b4ab7e913e3188d3121c1423fd69e8b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d0ab205ab4171c83dd62e7f937a262f7f9bf4a2225c2528a66d3704f73352c6d"
    "en-US"
  end
  language "fr" do
    sha256 "0e5f97ee3f5ffb728170e92f40093cf7f8d70760a3d3547178c3cac4e798b031"
    "fr"
  end
  language "gl" do
    sha256 "630aad75880bb7075ea4db2330f057a56cc1997e33480e131880bce51c3cfd67"
    "gl"
  end
  language "it" do
    sha256 "80a2de7d5696734b31636841a4e635343322b389528238c720944e3b1f79befc"
    "it"
  end
  language "ja" do
    sha256 "a48fc19f889ba73a75c76ce722765d0c69432b80c7181c9f1c4c31ba53c4d6a4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1635a990e2d3bce1a5fce1d669c0863c0f2bcaec3870e3d8d73b8a0429c99238"
    "nl"
  end
  language "pl" do
    sha256 "a9b5702e6d1dc2a43e32a507d6388e8a74e1bc70142d2684dc027662f2d68ad4"
    "pl"
  end
  language "pt" do
    sha256 "9e7831d1c8f03324e4fb661a9b54ba9c914c8eb9eed6f58657044f48c572dd17"
    "pt-PT"
  end
  language "ru" do
    sha256 "24c871f53a2dc76d6e421f60a48b840c97f517915c1fb8146fe90c7863cf3984"
    "ru"
  end
  language "uk" do
    sha256 "278138c29fa6930736ffe082395af6652830a2d728291c7017c1ca226a474281"
    "uk"
  end
  language "zh-TW" do
    sha256 "f87e1d8a2c677f1329e06f32916e652c8482eec43bc2b830de9ccc9ef8f300b1"
    "zh-TW"
  end
  language "zh" do
    sha256 "359ee9dacc10b5f2351e3dc9688630661dd0be033b37196516aeeb53c9810fdc"
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
