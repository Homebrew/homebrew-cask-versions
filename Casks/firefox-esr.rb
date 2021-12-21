cask "firefox-esr" do
  version "91.4.1"

  language "cs" do
    sha256 "91a2f1a58133fe16cfbc7d5af299aa7b93a8164383aa4133b5f710cd5e7e8fad"
    "cs"
  end
  language "de" do
    sha256 "351a7166685ec5c552f66030528b0390e1ecec4a8d7804774d3ff6290cfe4d4b"
    "de"
  end
  language "en-CA" do
    sha256 "c363e05b470919d59ae7787604264a76134d501e20b0b63d823ae0d144d15dff"
    "en-CA"
  end
  language "en-GB" do
    sha256 "db9547b0672a65d597c65bda1017e3ed7cf0917e0b111ebf15da437ee9bcf2e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "888bdb347380e34d05b4280eff8ce931693156316e01cdd44c6d2f850c73f2d2"
    "en-US"
  end
  language "fr" do
    sha256 "00c875e83ee8cef3a73bb77f4b6b70cfec6b3ab3f7a23d96927eeb9b690f043a"
    "fr"
  end
  language "gl" do
    sha256 "0f983dbdbc0c74060add75f23e5366fc1040462d04c24bbac96842ac89420dfa"
    "gl"
  end
  language "it" do
    sha256 "d537cb3fad8e814f1e8ae875d18dd69c4264bdd57ea67e4e43aae04f9ea8d6e4"
    "it"
  end
  language "ja" do
    sha256 "363e6db595b32bbc3c6f4b59bc4506c8e4237ecc9e3b5f990d36bd4abbfb4e62"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "acf4f6674e7637b33721fa7b5686ccf5210dafe7cda7c4ef2ef324cb2c5734ff"
    "nl"
  end
  language "pl" do
    sha256 "e09fbad207775a11748ba10de44cafb51c6a19dcaf3739e110d14bd2ec58b0a7"
    "pl"
  end
  language "pt" do
    sha256 "677cc74e42a772b8ae3495331049a3917a933e80060f0e9a905ff1d697bac39c"
    "pt-PT"
  end
  language "ru" do
    sha256 "529c75c039432e7c0a8177153fd86813d9c25ab12d9a439c65451eb4ecffebb7"
    "ru"
  end
  language "uk" do
    sha256 "8ed5fa8659bcb262487072335a2fe1ef819bb17a7a65b579a808140a20be2591"
    "uk"
  end
  language "zh-TW" do
    sha256 "eebe8910c74c342e8ef20e760c9ea80c52e320d9f698395fe236530e8664e035"
    "zh-TW"
  end
  language "zh" do
    sha256 "9d319c51a31727c41d0b0c779d91394f453a0bfca0e04b9d5ca7b19660356067"
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
