cask "firefox-esr" do
  version "78.4.1"

  language "cs" do
    sha256 "d55bb90a295fc73ec070a4c07364151fe76ca0795ab77f50a1e47521abf7b96f"
    "cs"
  end
  language "de" do
    sha256 "2cdd1f0a0371cd877285cc3d9d143496d268fae13ba57ccddafbee853fc402f2"
    "de"
  end
  language "en-GB" do
    sha256 "115e8a6bfb3d016faba907e57dda6d2152f4422b53eceb4c38cb8e5b32d8a862"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f6e4abdbe5d99dcde30737ace08c2f54fcf5573bafec28ffccfdc01996a21572"
    "en-US"
  end
  language "fr" do
    sha256 "e096aa36101ebc18bb15f5ad8df4ecf8ac349b69a86306d47d7c7a19cafa45f2"
    "fr"
  end
  language "gl" do
    sha256 "91ecfbb8c190be4b66be275f9ec13e75f3773a007a2c1cb829c2814f300dc9e7"
    "gl"
  end
  language "it" do
    sha256 "3a150271b80e958c790931d90068b8336ed05bb6742cf1dea6fcf270b4ba754d"
    "it"
  end
  language "ja" do
    sha256 "958b149126cd7683f95d767f3dec563b5c46f2eda20685edccb2c4458202d360"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4361c98e61bea263b254b8b64e114a9beac84329befa5f8cab078b5d98a5927a"
    "nl"
  end
  language "pl" do
    sha256 "be3050f13fdb8d141a088121a00249814a0e98eae867bc3f92fc10b8c621518f"
    "pl"
  end
  language "pt" do
    sha256 "a6820c827b4008fb8cd828b9d0d92cb46df07f8033a44d3f826d52c225a19c19"
    "pt-PT"
  end
  language "ru" do
    sha256 "cf851d80bba22e6135097d27705907497370aef3238afcb6dc7b4c6f3a293be7"
    "ru"
  end
  language "uk" do
    sha256 "2843b56a46c04d1576012e3e75cd3422844e5e789c1aeca82b5e06a831c862db"
    "uk"
  end
  language "zh-TW" do
    sha256 "e4aa74ad8d2d633287e5307c1d87a89c23f0672136cf8d5d0aac84122b51a51a"
    "zh-TW"
  end
  language "zh" do
    sha256 "60e9d7a40541f26f791e60b5eeaa5cc9d2ab9114f2623fb735ff7e0edbf5ebe7"
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
