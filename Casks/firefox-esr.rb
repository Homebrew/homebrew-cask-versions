cask "firefox-esr" do
  version "115.4.0"

  language "cs" do
    sha256 "c8a8c0c8e0669a9fdf4432ffad5ac6794124e65a656c9f8427afdfb7da2eb863"
    "cs"
  end
  language "de" do
    sha256 "b8da7059361850fa633acdb1185144b23acc6abf2c4d9e6226a8fa5f172ad280"
    "de"
  end
  language "en-CA" do
    sha256 "0b7be1ff34a8087a70bb923b1e5e05613689b8eba71c0cca5d9bd88079acd435"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e0c6eab609a3f44d1f98bb96e7fb2bd27f8487a3df0f34518a8296f3c76b9db8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "da53fcb5dd6a6f9625df295123d8946d6ac1948d1486abef33ce37352d64efe9"
    "en-US"
  end
  language "fr" do
    sha256 "a0a4d8c8b94f58654758fff9a496b70d2f55b7c2339a68da1a3d3ad49e3c4470"
    "fr"
  end
  language "gl" do
    sha256 "e1970673428ecd4f6e9fc46e76664308fd478803659d47170803c93381ce637e"
    "gl"
  end
  language "it" do
    sha256 "cd2594aa00d46add86a56983c23723c708b9b82b1fe35e26e37dc9e18865f941"
    "it"
  end
  language "ja" do
    sha256 "90a0fc578872a300f1b66ddb3caaf8b5f7ab1e800682f1c75a41864c364101e8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "74f923f1ee6d5b9c7807396c3934382969a5b0c9f4c3f8c0167f9462486a09c6"
    "nl"
  end
  language "pl" do
    sha256 "91b1a11bffed5617fd6f3bc2debaed0444dfbfb08a7fe353b0ed50cb793c1e80"
    "pl"
  end
  language "pt" do
    sha256 "eed551dd5ed977eaa8b9e0ac3f097a3d07f3397b68cd7ff72972632d9b7b3333"
    "pt-PT"
  end
  language "ru" do
    sha256 "ff8a4c5fb24fea52fabf09567ecf8eac0a0258eb69e729b40972dc7507172601"
    "ru"
  end
  language "uk" do
    sha256 "7e1bc1523b7ee57dd9214fe877ed5991e12cdd51fd75ef9013aa5d4aa17ee16e"
    "uk"
  end
  language "zh-TW" do
    sha256 "97275274b0de32d1d036212e2ebfd3df27514600072fab979de10245c7361348"
    "zh-TW"
  end
  language "zh" do
    sha256 "46a8b3b607e57635702af113f33eebb56646647f16bb8e4046185e3fd76834fd"
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
