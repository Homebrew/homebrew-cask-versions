cask "firefox-esr" do
  version "78.12.0"

  language "cs" do
    sha256 "7c36aa65e5d7a7ecae6fbc4e1ef58c573d934e7a797af588ab257ed6d6eab2d1"
    "cs"
  end
  language "de" do
    sha256 "96f774480dab8517d2f755d1a728b5701c63452d7e9e1ebcb73e0407ccf7dc69"
    "de"
  end
  language "en-CA" do
    sha256 "fc5170fd865d81be86c49050d881ecf1363d074cecefd0e305c41cfbc15e7645"
    "en-CA"
  end
  language "en-GB" do
    sha256 "383dc2cc195c45e1b5e24be6991161cfcf6e6bb3feb586adccc9fa2f8744cb72"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7c460ac899203e49a97523a4ab985e71556a7d7e820ba4cbc1bb9b6144ec0e06"
    "en-US"
  end
  language "fr" do
    sha256 "25d9909132b61d023d62d35b234c0a127c6138496d3f2d74e60cde1c6022e389"
    "fr"
  end
  language "gl" do
    sha256 "b944eb5d8d8feb5eccc9e50c31a26b8a70eb1df6e1c663b618c4d4612b78c181"
    "gl"
  end
  language "it" do
    sha256 "0ba6d11d2f788e464359509b610bd9b15bba0c54256ed2c951f829da41f1f970"
    "it"
  end
  language "ja" do
    sha256 "018a9dc1ba434fa1b56f57636a78aa727d019cbaef1e110be2803c622bcec68d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "78db717ed04ed994efa3f90eb3e6c2a44f7a8f5800ee0be1a67ba7d0433c7ea2"
    "nl"
  end
  language "pl" do
    sha256 "860bef7434707d2c3f23fdd03b63c28be0c52d35d2479e66a2532f82e756b314"
    "pl"
  end
  language "pt" do
    sha256 "1410d8cd5014d03c195044d9a7fe5d83703f1910f75c1da232c5861b87e421ea"
    "pt-PT"
  end
  language "ru" do
    sha256 "0d2198477ba752f33c2cf728a5a35b84284c825fc9d483b945933f29d9754d31"
    "ru"
  end
  language "uk" do
    sha256 "5cd789749e9db9a482fded42f38fc44e3a4a3dd0c9b343d622b4493311c675a2"
    "uk"
  end
  language "zh-TW" do
    sha256 "55f5c3bbaf8e813e77bcbaff5e8e9b72462c06d52bc02bd35bbf65f159a908b4"
    "zh-TW"
  end
  language "zh" do
    sha256 "c00c2ce3e92f69e664f35155ace040cc0aa6d0a9dea986d0656ee52af1812b25"
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
