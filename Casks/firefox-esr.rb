cask "firefox-esr" do
  version "78.3.0"

  language "cs" do
    sha256 "9cdf80ec5e15371e4339951c7f1f615672c2cc5996cd8c8c1a8001c614edc389"
    "cs"
  end
  language "de" do
    sha256 "d3774180e281120a93967c3b689b1423d6e4e55f20abcef8c6f04af3ce607815"
    "de"
  end
  language "en-GB" do
    sha256 "7bb3159fcf4d751bafc582c439597f31c2feecc032c7dcbba328f412acc6af66"
    "en-GB"
  end
  language "en", default: true do
    sha256 "12dedf8c3a5552ab267de9ea83aadab3b36539eff076d946a4571713fcbcf5eb"
    "en-US"
  end
  language "fr" do
    sha256 "c1900910adf4362ba31751b269a4ee76005d4af341435b9f7d830b185ccc286a"
    "fr"
  end
  language "gl" do
    sha256 "6cadff11592f0ef4debc04cd3fddc8ff07e40b8990dbc599e34cde7c45ed2961"
    "gl"
  end
  language "it" do
    sha256 "08bd220408d2744e5d9677960154a593fc0df5a66005aae6d96f7fba8ed4c1d1"
    "it"
  end
  language "ja" do
    sha256 "9d88afbda46aee7acfecb605541fe38c1d68334d7c0b79d38cc6e0420142812d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "45c896aaf664488deb57356b3419f4c93d1f69f3d791c82f5e51b3036bd326ea"
    "nl"
  end
  language "pl" do
    sha256 "6d8e0f995b12c7b5f82aee3a6bce963aa7ecfa348816c723f898123775735a9a"
    "pl"
  end
  language "pt" do
    sha256 "f84093ac4d587cd16058423c0173a2ad45351c43b3e6b3d6012656eb23fd59a5"
    "pt-PT"
  end
  language "ru" do
    sha256 "a6cd1c35611c512a43345e548f74b5f6e099da0a1c0d77cdc4f4f85de690eb1a"
    "ru"
  end
  language "uk" do
    sha256 "f2caf99f238a6699273e2f4c3ff74cfba738b0689e2a49c2eab07a5ed7b7a83f"
    "uk"
  end
  language "zh-TW" do
    sha256 "cb8f780883134d08676c0df5875f38578e72f0592f685843fea68e10761fe9f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "ab4940386744c75a25a322d9e5b900e7357a36352ea84c0954d301b463aa15f5"
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
