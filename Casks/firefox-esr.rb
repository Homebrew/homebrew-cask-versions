cask "firefox-esr" do
  version "78.3.1"

  language "cs" do
    sha256 "46bcce03950d30182bd87ba760f9fbde8d3b6d72222042d2459acb75f1d3448c"
    "cs"
  end
  language "de" do
    sha256 "8a04260388a430a3da3344c0cdc88d72b0f4b8d98d81f95e9b18d82d55f84bab"
    "de"
  end
  language "en-GB" do
    sha256 "7a7971d66ddab99a3c04434c919a53719507d15590a0f273c97bda44335f2b9a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8d98061a6e181f584e786ce05341230b7b919dfd5d63ce1bb5e370a6529c66b9"
    "en-US"
  end
  language "fr" do
    sha256 "c0f9bf52e457e4154f76d35c5c1042b934a71de620234f7133c1af1ab49c60e1"
    "fr"
  end
  language "gl" do
    sha256 "28275141506ba651b723954c14debcb7aa031de23eb9cac0a72f5e4689affc72"
    "gl"
  end
  language "it" do
    sha256 "037e2b10df52d10f54014839faeef718d4b05decbb1bcd971732acfc89faddfd"
    "it"
  end
  language "ja" do
    sha256 "4470a5c852ae841e14f938b33535648ae79511a82f52b4762232ff15b30ff52a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "183913f7ecc0eb4d20b7f9ee7eeaf58d436f52f666ccf99f103583db647aa7b6"
    "nl"
  end
  language "pl" do
    sha256 "6a10d0cd3c99223f2e7076c176375999c969db544e88bedae3dd2f50465db549"
    "pl"
  end
  language "pt" do
    sha256 "f927b46d4675db79b850e9bea0c1e9da7507b26bff8bc3ce5ca04e3191334f2b"
    "pt-PT"
  end
  language "ru" do
    sha256 "6195e510d6d236e71d04e6a6f7bb73d2541f64e16fc8f743b604686d6c3f40b1"
    "ru"
  end
  language "uk" do
    sha256 "05cdc7dd982b5080cb372588b42801cd2335e7f0d5bdabd86e9a9e7de170314a"
    "uk"
  end
  language "zh-TW" do
    sha256 "c3ae18ae00f6bbfd95f938ba1a6d8b0acc8399400e4a05efd5ec10079e4b1db2"
    "zh-TW"
  end
  language "zh" do
    sha256 "e0b2bb80a535bb486ff80d3f01842135334340439702ccdcfed04bc00f5a0601"
    "zh-CN"
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-esr-latest-ssl%26os=osx"
  name "Mozilla Firefox ESR"
  name "Mozilla Firefox Extended Support Release"
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
