cask "firefox-esr" do
  version "68.12.0"

  language "cs" do
    sha256 "0238563f440a4c5d4cba74031d0d5bd8a78fdb1c0dc387ab03c62354fdcd137a"
    "cs"
  end
  language "de" do
    sha256 "a16f22e1f56600742ad2f716921baf04472d73e6f2e19f566f36cdccf8dfdeec"
    "de"
  end
  language "en-GB" do
    sha256 "8f90014a64414b50d3fbe87efddf78bd842009ee12e88e57a5dae4a6ae773b05"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c743379678b370eaeff8c7230deaf1acd7c53305703d540d33b575ad00615a3a"
    "en-US"
  end
  language "fr" do
    sha256 "d780a6665d028ec9aff9f338c516e324cccf72a5d87144f79772c9fad0461831"
    "fr"
  end
  language "gl" do
    sha256 "9feb39753cdef7d44162877917ae48c7e816d2adf1f2f73c465d1964e6b69c93"
    "gl"
  end
  language "it" do
    sha256 "083c199166d6d5005706e31bba3bf500defc34b0bfc474b9303d22d3db7b2563"
    "it"
  end
  language "ja" do
    sha256 "14550d5ec60ff79bc1e8c9e23878bf87c75d8c344383fd6c89491dbf53d93e5c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9121f4963166ba6a0f4b4b23177c24f4b5b70a04c41ca145ff54ac06f59d2b7f"
    "nl"
  end
  language "pl" do
    sha256 "5ad9e4958661ab50bda4a43d460700b78b14d78833cb54f6435a543edf6d5ab5"
    "pl"
  end
  language "pt" do
    sha256 "240cbf3f72c96f45e3bc114dc79e80a8fa35f73e3c73a00ef1db5ee962b79fed"
    "pt-PT"
  end
  language "ru" do
    sha256 "8c1a7fc13abf36a7195d307fccc41f3225ae83e4f481edb8a6583565c6da836a"
    "ru"
  end
  language "uk" do
    sha256 "ca858ed10adc98a116d4ff1cea2c9b2827cf15431499495eb0a2a7eb039a9161"
    "uk"
  end
  language "zh-TW" do
    sha256 "2196ad779b0bf2f5d3ddbf93a4d9c9eb7531800dfb425587cbfc4bd6e2c329da"
    "zh-TW"
  end
  language "zh" do
    sha256 "e65523eccb665f8b60a927cd6f546f883ff982acaaed13f40f9aedec5bdb92f8"
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
