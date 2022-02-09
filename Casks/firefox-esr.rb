cask "firefox-esr" do
  version "91.6.0"

  language "cs" do
    sha256 "8c1265e2e3e84d03050e72026b4c0e50e668330461dc7b2c4ec409ac86c6a959"
    "cs"
  end
  language "de" do
    sha256 "303b6ab8e39e550ab9d018dcfcb1e9b2b2c1cfb6972c1be34b97c681eca975df"
    "de"
  end
  language "en-CA" do
    sha256 "8c97e37e3f45d47ea90d485df2e54fcbc369529c2e1850efabcd54e562f56d1e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "32ff647194cda3740497526dcf379a15504e0893e0c0425984643f995ff45cc7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b783f4ae2810507669612bff115b4924e123907f0d8cd65c82e9094f052e4b2e"
    "en-US"
  end
  language "fr" do
    sha256 "731e77199b94b57cd1908a856df4ad0cc660fff1bd3e6aacc96431b556589277"
    "fr"
  end
  language "gl" do
    sha256 "e1811990f160a0e0112ed8716da06927f87179dc9c115d5f3fc82b697e8e55d4"
    "gl"
  end
  language "it" do
    sha256 "392a07f79c57fa544d4812cd0448c7e4a4e384128dc5c7a6c61ec6399b591ae1"
    "it"
  end
  language "ja" do
    sha256 "847ef026ab64967445d8a5134fb842d12fc7240e24a4175269daef00371e8a90"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ee871ca372bf96ea1fa1b32a304ac884cc89a233a981a4f1f44f2934118aca9a"
    "nl"
  end
  language "pl" do
    sha256 "9fb76466a2be2857ec61f886530dda9789793f3f0a8f1bd8b580b30de1b2afba"
    "pl"
  end
  language "pt" do
    sha256 "816cf77aed788895740879012ce552d6ae0b25d89a56dc409f9763b38329126e"
    "pt-PT"
  end
  language "ru" do
    sha256 "dbc49b18ec4be495a279a3ec5a0437683f84bcffdd9e2b291718dd11b1dc735a"
    "ru"
  end
  language "uk" do
    sha256 "87bbeaf5b1ac42f4d0d24c6dacf370989f6410a34a3da6dd579a04e9e7e7dd7f"
    "uk"
  end
  language "zh-TW" do
    sha256 "8e9bc7a3447d1d0a84d20a1674fbcd0770b131c19e55458e9dba09510278accb"
    "zh-TW"
  end
  language "zh" do
    sha256 "c1ff1af83fde15a83db2940cfc5003c9668d19edaa55d5fe17f4c065592c1a53"
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
