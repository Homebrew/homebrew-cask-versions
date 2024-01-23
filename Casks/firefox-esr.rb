cask "firefox-esr" do
  version "115.7.0"

  language "cs" do
    sha256 "8b1f033ac4a44fbdffd7ccaeeb79021c77b904cceb3f2a2ed2897d47f1cdd1e4"
    "cs"
  end
  language "de" do
    sha256 "843064e3f0f0a92d2c6ec1fd45ee35eeb91c565531c48676407808b929d657c1"
    "de"
  end
  language "en-CA" do
    sha256 "8a32312cacad82786b11212c6ac229e2f43707aa8e7ff3580d48f1101cfec3d2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6a28d29cc7d88b1b2ff71852f58c4953a4bdecec0c72250f40f3ba679b9761d3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "74bf4d93df9e73e8c68ad9940f30a10d35e3cb5a93e7d06b4d6b226e0513433e"
    "en-US"
  end
  language "fr" do
    sha256 "79935bc23af77be49a4f3850cb60e6f47aa8ed873932b3958bdd812927a37663"
    "fr"
  end
  language "gl" do
    sha256 "030605a0c7e4a7439e6aeb1a42572138dba7bb454b4b955c45cb3a5934cb6e22"
    "gl"
  end
  language "it" do
    sha256 "130b74c6b564e89440ce1b8c3a1752581ea3c29f3eba84da9c04fe19d53c6a73"
    "it"
  end
  language "ja" do
    sha256 "9b0b038fb7fbb9300c25bbd171880f8a806b88761ed051910b3800caa31fd035"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "50bccc9c26381dcddbf8c2b6307b25ed2e96c6add85125a045294f9b39760008"
    "nl"
  end
  language "pl" do
    sha256 "cabd9702ef51a5563f879a7af89d0d6d34b98ccecebb18b94ccdb259721c64d0"
    "pl"
  end
  language "pt" do
    sha256 "37d4ea9202896dc102a6e6f5f7595a614d57bc67496ef44b2282fee7fb540883"
    "pt-PT"
  end
  language "ru" do
    sha256 "13253c3115ce27f6c8e2842ecb4d5055aad2f8cd0b813cb33616075b6d2802c7"
    "ru"
  end
  language "uk" do
    sha256 "f5cf1610929bea775ed23b0f09dfc3fa44bd5074a55e7e40ec31c5d2613e5e8f"
    "uk"
  end
  language "zh-TW" do
    sha256 "cc8666000ddf6cd27296ede97b286c6da0d9f69ba7c56be584cbe169a1f2d31d"
    "zh-TW"
  end
  language "zh" do
    sha256 "b0a7aba0bde2719773b2219cb34d1f586acbaeb90ae2e919c245de85e954bde6"
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
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
