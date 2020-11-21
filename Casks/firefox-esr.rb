cask "firefox-esr" do
  version "78.5.0"

  language "cs" do
    sha256 "81addb6f80cbc5b2029eb05b73f113b02325b7bb3698d0bb8bf3abde35738de5"
    "cs"
  end
  language "de" do
    sha256 "73ae027c31d3092bdffbcc382d414695704c8aca2f0ee91d181cecc62e1a3bd6"
    "de"
  end
  language "en-CA" do
    sha256 "a867aa0b88ff26745f66792d453d76f5b0a3b46ccdebcaab64d7943a7001d317"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bc59e11d2ea5a0c2792ee0f188c4097034f267d8e8be7e36d5e602f2b0dbe597"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1c8dbd56864bfc1763a9c7f8b4b193eb81d2ab66a8ee4fda38ade84b50b2717a"
    "en-US"
  end
  language "fr" do
    sha256 "8cfb1c6e8e3977f786b355ed69f100ed9b1fc6b3aae6ec06f62ead6ddaab218a"
    "fr"
  end
  language "gl" do
    sha256 "6c10ef5abe09ec4f04f2d50d163bd7e591fdb80b9b236e07d639e831ad86b548"
    "gl"
  end
  language "it" do
    sha256 "a5bbd468384a67e51b268de62616b6bd12419a90611badd4fe82d88203539e7d"
    "it"
  end
  language "ja" do
    sha256 "cb4e608bbff6554f450e61f718cabf59bd0f8e67e1141379b9e66433c71ee171"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "22c396fb3121afada82f143d5795206518aadc540810625a6953086e1495bb29"
    "nl"
  end
  language "pl" do
    sha256 "135a8c8090deea8c166a7d30be2e618d98d8e40236f2861baa6d4847ccb5f104"
    "pl"
  end
  language "pt" do
    sha256 "bd7ff851164695be49d69fe597b81461c3e419b19a0ae2e7a68e50dfc96fcb4f"
    "pt-PT"
  end
  language "ru" do
    sha256 "e26a0175fe1afb6efb285f8a581b31da903e50176d878dc07fedce2faac6fbcb"
    "ru"
  end
  language "uk" do
    sha256 "4406f4a7653c2a297685bbc847d0a6482f8875461cd2d631bd9e1ab09f699004"
    "uk"
  end
  language "zh-TW" do
    sha256 "3a1be83a87eb58be9ec9defba695e919ae054dadcecdb784a65dd7d1fe0abae3"
    "zh-TW"
  end
  language "zh" do
    sha256 "273ca9cf9fbd82bda397a51deb06339f284255cf92394c66374bab4f99e75c85"
    "zh-CN"
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-esr-latest-ssl%26os=osx"
  name "Mozilla Firefox ESR"
  name "Mozilla Firefox Extended Support Release"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/organizations/"

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
