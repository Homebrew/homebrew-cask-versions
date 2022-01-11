cask "firefox-esr" do
  version "91.5.0"

  language "cs" do
    sha256 "2e2ff8021026c48d135fddf1b7f0f2cbdd312f2460cdabd05f2606fa6cb2e3df"
    "cs"
  end
  language "de" do
    sha256 "5d17bbb5cb5c7f97c2fb0a6645812f01cc308456a3006150b0f385304f6896b8"
    "de"
  end
  language "en-CA" do
    sha256 "142092c6e72a21d9e9b7d7cdbc0e80abe65fb239cd9f8657160bd0f92e1e71a1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5b95b06ea2c85bba5d8abc4c7cfa73b3e4bc7622d5c60fc2552e73758169b955"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b6371b45549a47edbcc092f646efd1cd01eeb77caa89075ec742da0ad72a370a"
    "en-US"
  end
  language "fr" do
    sha256 "51a375a6d48e6e816a1d172bcb0521785d5d897f2cc15b6a557a684d1d322ad4"
    "fr"
  end
  language "gl" do
    sha256 "efdb41626d2736f1602186933b5917ccca760e0a2a8dcf7df8927353f12a1987"
    "gl"
  end
  language "it" do
    sha256 "5f218d4b3aa8acdacca02b64b794b6bfd8760a199869908d9f89189a83c75349"
    "it"
  end
  language "ja" do
    sha256 "f8028e2b059a37aff5f92cfa84c61d2fa2704acd8c901b6caa8d402d4537a4f9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5974eb12ccd7413ff5f4733be85c895687e5b2a96cb0d459d5652854c29c8cec"
    "nl"
  end
  language "pl" do
    sha256 "1dd9f6c82268e15b1520bd8e7c66613c70151ca19af59fafeabaad3d244f2dce"
    "pl"
  end
  language "pt" do
    sha256 "308795267771b07c7e069eb41f99c8f8a693018dd843a617c6413e7760f29b2a"
    "pt-PT"
  end
  language "ru" do
    sha256 "11b2d566c18dabc52f4b5da775a127411234ecec51cf24542843b8d2008231b6"
    "ru"
  end
  language "uk" do
    sha256 "3cb1842935a4529117a6bc00f4ae279b382dff2273c1189bfa1425cb314eaeff"
    "uk"
  end
  language "zh-TW" do
    sha256 "1886427d09bd4560ef95164077f7838536880084257bd8515a370391577f5e69"
    "zh-TW"
  end
  language "zh" do
    sha256 "f3301aa36c9d354c0fa048458950d852320e86fe0f0dfba5f9f98d439fac9fb2"
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
