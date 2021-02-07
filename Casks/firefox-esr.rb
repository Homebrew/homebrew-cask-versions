cask "firefox-esr" do
  version "78.7.1"

  language "cs" do
    sha256 "27e5a9abdedf7e2cf1881d869b1244ba6ef0802869f23e1047b10300f01ee906"
    "cs"
  end
  language "de" do
    sha256 "26061618b9186b37d2745e8b27ebe3af32d48e14501ec41473bfbfdcf9bbd2f1"
    "de"
  end
  language "en-CA" do
    sha256 "17f17477c0d3db98306b1603af550cf04a18262497fa7ea4b0a6526af3ac291e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6014ed74228b0b0d1937ce1920ce9f2bcd58a8f58a489b236a256ee280583d3c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c0f081d14e1cd8a73bd296468b4fbbf1092fbcac4adab4b34969a04b4f155b5"
    "en-US"
  end
  language "fr" do
    sha256 "ddd1d9cbd83781d27377b8cc4d3acca63a3a53b54f1e3d123aadb8ba474eb865"
    "fr"
  end
  language "gl" do
    sha256 "adb6da6d546c71cad97ea90691ce59c879f8783bbd85f290f186ba31f6ac7697"
    "gl"
  end
  language "it" do
    sha256 "720248306b58b16c7351127d73963775cf71ce22bdbff7e751fdd3f7238491cc"
    "it"
  end
  language "ja" do
    sha256 "ed701e1489eda705f6e970d504c72a3748c7e1f16525fa01c56970844890d3d7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "126a11e3dda5c85c09cc58efef10cb9e7b8de4b2f1912170b156ca308bf219df"
    "nl"
  end
  language "pl" do
    sha256 "40056744105f493bd418f505c54a397c27669728fe2cb2a2580a23a8ea8f0b42"
    "pl"
  end
  language "pt" do
    sha256 "f6d03b03607f1c3d1b08bc4655b65df23093691c89552a95e2ae5555227e3a68"
    "pt-PT"
  end
  language "ru" do
    sha256 "d535c6d19621ec7e12958b6ce33106697e7ee1e2ad2ef4ca9e22d645c26e3d6b"
    "ru"
  end
  language "uk" do
    sha256 "3a77608767343f41e2b799bb061319d97ab421b17f2ccae88a2e29a2d83cf5d1"
    "uk"
  end
  language "zh-TW" do
    sha256 "d60c9d7396660a9c63c96d277ca5468d3209c43135ecc2e6f944d3211ee7b26d"
    "zh-TW"
  end
  language "zh" do
    sha256 "8026b5566cade981d91a137a441c92b699e912d6fb14a1792efeab8f366cc3ad"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
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
