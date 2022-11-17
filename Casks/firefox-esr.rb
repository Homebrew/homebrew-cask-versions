cask "firefox-esr" do
  version "102.5.0"

  language "cs" do
    sha256 "2d444790da4f449fbb71521cb33b2698f7ffba9c9a4cbdcd0ba4e2dd7e76114d"
    "cs"
  end
  language "de" do
    sha256 "2d15523781e8fe2a4ba00773b48536aaef3bf2ffed0cda86a017fa3dfe6d53f0"
    "de"
  end
  language "en-CA" do
    sha256 "fc0ed8f9321eb85f7e871c2506f2dd7b7756710873b84986bb12bd27a299cefb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a6b271f74f9531664b8e9497a9044630975f62b21792037dcb777edefe7dfda3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7ce081723f70631ff607e4e7ea107497657589816a3b90aa176fa589c14a28f5"
    "en-US"
  end
  language "fr" do
    sha256 "5c179ec2467af0a04ee188dfe76368139cb6614a7c99095afd6aeff3391f5b4a"
    "fr"
  end
  language "gl" do
    sha256 "e3af7699ea19bf1fbe363fe80a113cf7eb94a5b97f0944dc335b82462b26631d"
    "gl"
  end
  language "it" do
    sha256 "b923ad319618752b770b9cf78007fd8aa5d113aebadf34c0187b6490c2cc5aaa"
    "it"
  end
  language "ja" do
    sha256 "18f40e8b1582fa8b0b94d73f8142e239b75de198ec61a0c3bdf0a3626a7f2e3c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9857482488940c50ecf07c12b4b0988d09665fcc87d4eab7cbb53184672e2497"
    "nl"
  end
  language "pl" do
    sha256 "8d4fe72fb59ddbf5d39ef03fe58606112efc2acdd221177fce2d570856d62a67"
    "pl"
  end
  language "pt" do
    sha256 "f29237bd347f38b84a568e5e1aa7a5d019975d75ff25d7148fd3ae2ba17bfb15"
    "pt-PT"
  end
  language "ru" do
    sha256 "96e018bf6fa382375fa07aceac8d70db2bfced1da8d1cca4c979be25affa7473"
    "ru"
  end
  language "uk" do
    sha256 "5d33b5808f895a950091b6032091d87fd10f3c08cdb2b0f2fc6b3e2b060c1151"
    "uk"
  end
  language "zh-TW" do
    sha256 "5f339a741901a8238073f75ace20d76bff90d64d2834e389efdb1647b075b610"
    "zh-TW"
  end
  language "zh" do
    sha256 "cc3a458786d59b4505a9a7f20a7ce3f57d70474505dcd5daa7c8d24330153485"
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
