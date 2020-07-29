cask "firefox-esr" do
  version "68.10.0"

  language "cs" do
    sha256 "4250e888513066415a8ebbf88e668892bce9a0edc1d73009a5358d87d6027d63"
    "cs"
  end

  language "de" do
    sha256 "fdb168bd32fde69020cc8767e8d47a4a6a4a73b32bfe23538a99bf2d99a38e4b"
    "de"
  end

  language "en-GB" do
    sha256 "d9c11c30c5522af53b224cbde3e549b605abc9b4f93f9f4fdf7ed5e60f6200ad"
    "en-GB"
  end

  language "en", default: true do
    sha256 "7251efaa3dfb956631f5f9ea9293401c1e6aedf9c37824c6a60b0654e1b10174"
    "en-US"
  end

  language "fr" do
    sha256 "350a36703c80dc6c054487ca08bdf3a68a951144e45c66bb9fc0c4a5e6999f81"
    "fr"
  end

  language "gl" do
    sha256 "6f3b867dfcedadd1ee40073e92298dda9ff64f109edebb09d34bff994a2d2ef6"
    "gl"
  end

  language "it" do
    sha256 "59cc9ba9751b2439d044a4185f257f78d4da63ace899b5f70a5323485c91ea32"
    "it"
  end

  language "ja" do
    sha256 "043dab4a3db0948c46672ee59c46346390fc81dc4125cb53cdab6313dd56ec24"
    "ja-JP-mac"
  end

  language "nl" do
    sha256 "bc2ec944b23ac27d6138fed4019817ba6c98735981dbd7cad5ab89c462f71d36"
    "nl"
  end

  language "pl" do
    sha256 "612b29244d0e241f51e5352c7f92b6a93328e6d3b83099876524526bff72b7b0"
    "pl"
  end

  language "pt" do
    sha256 "379268d827cb92e5211b3ba29e9ce59cf5ad4d44e39579e89c65dfd68659db28"
    "pt-PT"
  end

  language "ru" do
    sha256 "10013375a8f28821e1c8204e436213754772ea1e72daaa15e59b80e3d9a15f38"
    "ru"
  end

  language "uk" do
    sha256 "bb342927a50a83ac7dfddbcb447cd4c0c1012590f910380361331935cc680591"
    "uk"
  end

  language "zh-TW" do
    sha256 "8f8de60e52027fa4b957b009c47dbf0048a68dfad42a99935f7945ccc9c87cee"
    "zh-TW"
  end

  language "zh" do
    sha256 "4a4140e0c7fb3cde886903d755e535ec465160c66242040556be2310e4ff0081"
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
