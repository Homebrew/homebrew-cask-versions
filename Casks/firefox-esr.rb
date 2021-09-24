cask "firefox-esr" do
  version "91.1.0"

  language "cs" do
    sha256 "9d070cf5f77cb70a3ef9e4149ead4bc8af23aa0193ca8b428d8fc7dadc92cf41"
    "cs"
  end
  language "de" do
    sha256 "30cf80dadcaa0f32dfa4ff2a3cbcbb7b001e775889e58f46164a29f58d3b438e"
    "de"
  end
  language "en-CA" do
    sha256 "b09302870b54f1fc1f188125f125f11a6012f16721c2532adcbd73ec04c00c25"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dffda5d1d196db7b7a9bc2d2faacb1f08525929d670c5d68c87dc5a847b1bb2f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7be2078165fec8b32fece4ed5c1f1148b324aaffd88f55fa7e7bf6efd1ab88d5"
    "en-US"
  end
  language "fr" do
    sha256 "7c579c88f779b26c07c134b184a08f7558fd36f3425a8c529a1a66b88d6f841d"
    "fr"
  end
  language "gl" do
    sha256 "0f4975b0c13d9ad716557ac0bffed00068a628a0bd0a370f93af518521fa28b9"
    "gl"
  end
  language "it" do
    sha256 "c18c355be7178de9db36694d150877a5dd4a9777c84426ee2528ef8e108e69ae"
    "it"
  end
  language "ja" do
    sha256 "aa8b65171b2e754b7cfe8388384d20e652b086b84d8bab521337e38ff9cce368"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8b757079722c2686f0c6b95af1059b81c30f43028dbd34bdd6ead5b526f492a8"
    "nl"
  end
  language "pl" do
    sha256 "1aba8b772ced72f8c13805e90fef0edf5bc24413c3a86f9a1a236f829980dfb3"
    "pl"
  end
  language "pt" do
    sha256 "2cc999306e0ca4ce4c6a6720b75a382f931031cb4323424f2277acc7a00e0fd9"
    "pt-PT"
  end
  language "ru" do
    sha256 "b74492e4e25df26369a8ab07170107b5757396a5a81516a5e03be67a6d3b0db9"
    "ru"
  end
  language "uk" do
    sha256 "3a8b8c72eb7619aa43fce883d44bdff79aa4cfacf063320d88c83af8d6bda16b"
    "uk"
  end
  language "zh-TW" do
    sha256 "cf6762341c4808e85ef7675a3a3f4084f9c2ec44db52a2d299fb0a6c2f589549"
    "zh-TW"
  end
  language "zh" do
    sha256 "28f0a0c8f6fa3c3a9d685344b2f965a1efdc76bda1df3af54340829e3c7d0211"
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
