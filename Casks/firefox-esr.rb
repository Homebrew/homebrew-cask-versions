cask "firefox-esr" do
  version "102.0.1"

  language "cs" do
    sha256 "4f46c80e7b266f696212e6baaa58e20a239ebccb8ba6cf24e5d70011568be7b0"
    "cs"
  end
  language "de" do
    sha256 "18851140a90ef986ddcc0e34bcc398592d0914ffc53cbf12ec8b77074f1a657e"
    "de"
  end
  language "en-CA" do
    sha256 "efa54b17123608619b9c536a200152fe2633b0b8ca0a336a06c419b966c476af"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0003ed387f0aa5d8fbfbc9ca89f5f7064b6945a1c39bcb8d0e625c97e448a01f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4893f22190bb58c04a92a865bdc0b18bdb613c0d2cbf18c44776c3b0486dcece"
    "en-US"
  end
  language "fr" do
    sha256 "5ff50a784ebbf802b859bdb3c34578349791df0206f83e6a17f8f662eedd024f"
    "fr"
  end
  language "gl" do
    sha256 "8446ebe84a36668c142ee31164114111cd0fecc7684676c128a89b350406c74b"
    "gl"
  end
  language "it" do
    sha256 "6cfd39be2ed7244d2b2fe18d36922ae3639cbfff9e2b45b7ec583149ddf9223f"
    "it"
  end
  language "ja" do
    sha256 "099ac1d4aad632ce27c81bc684ca85946f899b1c2145fac3a7302605e16191ca"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1d9adb263cf2f4c5d3ee06fcfd8e0fda1ef0ee077b721288e7514682aaab691e"
    "nl"
  end
  language "pl" do
    sha256 "1ce3e6288ed9132db3e54d9961e1036cde9a868f4175fa793e375299a2391395"
    "pl"
  end
  language "pt" do
    sha256 "003b8f845bc37dfd234d38918972e1a5e0c4a444a566a4b5aa35b98931216430"
    "pt-PT"
  end
  language "ru" do
    sha256 "6cbf7ecf0269e9568dd76bc414a2c33d74b7e56140f7cae8fa91176310d1a5fd"
    "ru"
  end
  language "uk" do
    sha256 "d0c7fce75e4fd7f271f0fffab3a0d4906fb10036f4f4f1840fa190ac4e3cf6d2"
    "uk"
  end
  language "zh-TW" do
    sha256 "ea797f89e6033318f8ac3944ccc042a86acc914659bca7893f1b8053bbf76861"
    "zh-TW"
  end
  language "zh" do
    sha256 "a2232c9bb4123768857c29d202b86ff7290a6cf00166a6e763b3e9b9c45fcce6"
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
