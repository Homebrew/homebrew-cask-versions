cask "firefox-esr" do
  version "91.0"

  language "cs" do
    sha256 "18777107493c2482cdf6a6bc0c3286784a3897d8d0d0bdb5c9111a41b523fb70"
    "cs"
  end
  language "de" do
    sha256 "45b3e901507cc53f50879f8687d1f0f8eacf7e09bf1f093fae0d8d6b38d2173f"
    "de"
  end
  language "en-CA" do
    sha256 "8a2b63e8755515a3b24bbf40ee5830132816bdccb5cd93c053c7337a4aa881df"
    "en-CA"
  end
  language "en-GB" do
    sha256 "60f4d179a4d750d48cc79a7b251bfa602c81c1655a0a98ded5f8cd0b15890d4e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2f30bfbe14cbd4fd5abea46ef09d5f8bee6aed403f20d1a20b292280f77ea908"
    "en-US"
  end
  language "fr" do
    sha256 "1cb918886fb507e5b35c8f21660840e8109e58c3a5d993c0bdc851d0e8ad1bb0"
    "fr"
  end
  language "gl" do
    sha256 "e86855fce9b8f0496f1be7bd1435c263be9625fc51a679c3cae4f8abf698cba6"
    "gl"
  end
  language "it" do
    sha256 "690a932d5ee719e86babcd81d10df5af41a0c6dc713b27bd9e2312b2fce9afff"
    "it"
  end
  language "ja" do
    sha256 "0f5a5b2d0aa569dadb13f2198d9a06c07037d088b827cc24b7f3ea79a5ccd1f0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d9f03999bcead00d81105c49dd63ae289cfa4b73e0f94f795ae4e0cc4e825407"
    "nl"
  end
  language "pl" do
    sha256 "d5c3a53f9bda6474f325283cc4000664dc157679e60104620e188903ec7e34cc"
    "pl"
  end
  language "pt" do
    sha256 "4d3955ff250af6ca491b1f7e7a28a3a5fd98bd3bd32791c0419b188ae70f8d16"
    "pt-PT"
  end
  language "ru" do
    sha256 "203345c3d2d08e713dc34ba4c9158fa6d3aaa222cf9f8165f7b3e925fc7e4464"
    "ru"
  end
  language "uk" do
    sha256 "36154ba16c4a11e6fc9e3b5a56c4ba211d9a8b9195710fea53938eb29e2cefe7"
    "uk"
  end
  language "zh-TW" do
    sha256 "600a6e5e1dae61d6fee54e8a1d2766f4e7b4459005389f4757975c52ad5c3c92"
    "zh-TW"
  end
  language "zh" do
    sha256 "d757f9c11ef02bfc374957ac8e7f74425b3049c836308b9237717514c978def0"
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
