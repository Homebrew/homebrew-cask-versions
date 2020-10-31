cask "firefox-esr" do
  version "78.4.0"

  language "cs" do
    sha256 "502074da64ddb0a0efc97120fafb2ccfe961cb676542631fa5b734f0196fb750"
    "cs"
  end
  language "de" do
    sha256 "4bf69cec269ce229447f8f7733b2e5163550ac150a3f9c7d7e1018263385c2de"
    "de"
  end
  language "en-CA" do
    sha256 "c59d589d79ee817f219a27bcb1b8cea15f2cc51bd3fa9d721717741100d73fcf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a559e934d9586b8e24eeb3a3a0ca97b65bdd623ce3abb07fd177bcd31ade8930"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6f6685c47cb96b8530574349d7c0312bff9d369456586df32a84e1972614c64f"
    "en-US"
  end
  language "fr" do
    sha256 "e2db53307be0053ee9e46604d14001fa6db39c589517487318213142e50fb36b"
    "fr"
  end
  language "gl" do
    sha256 "5e63616d2819ec690d7645b0ccebdd5c9fc27b436d729f6552ddda186b249c88"
    "gl"
  end
  language "it" do
    sha256 "35a00bb9ae1fd4079565ee926312de9f47acc6694f8c4d5e5bbaaaa3031bd181"
    "it"
  end
  language "ja" do
    sha256 "4f407b1eb03e176c724e9a8a115b68a9463e44428f68a57aa6c520ca254c2279"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2dfac2de5a49aa711f0c9bc63ec2e27bc8dccca3e06d917cda3f58d8243a82ff"
    "nl"
  end
  language "pl" do
    sha256 "6a282049dc5847c7797f3652b996920ca83579cf65be84c8a9241f9f69becaf2"
    "pl"
  end
  language "pt" do
    sha256 "816cdcffdf59c479e52d26ba33c7013bf23a0972d808232e1e2db991e505f375"
    "pt-PT"
  end
  language "ru" do
    sha256 "45c8d11344f02e0f9711761a906547b76be38b2a2d4a9dbe62e2200cb563df23"
    "ru"
  end
  language "uk" do
    sha256 "c6dc444a8ee9529574fdd33cb2edd354e030a2165bae95d930837054e1dc564a"
    "uk"
  end
  language "zh-TW" do
    sha256 "0b37d8859af63d256af2ecac707b732fd52210d940212a136f3ee5688e47c931"
    "zh-TW"
  end
  language "zh" do
    sha256 "4179e62e58c661067d016d799ec5a6c876b0e37309aafd605325275d540eb82d"
    "zh-CN"
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-esr-latest-ssl%26os=osx"
  name "Mozilla Firefox ESR"
  name "Mozilla Firefox Extended Support Release"
  desc "Cross-platform web browser"
  homepage "https://www.mozilla.org/firefox/organizations/"

  conflicts_with cask: [
    "firefox",
    "firefox-beta",
  ]

  app "Firefox.app"

  zap trash: [
    "~/Library/Application Support/Firefox",
    "~/Library/Caches/Firefox",
  ]
end
