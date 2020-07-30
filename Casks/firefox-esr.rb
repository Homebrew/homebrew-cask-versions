cask "firefox-esr" do
  version "68.11.0"

  language "cs" do
    sha256 "769d864f1fa0ea6ed068aa80bfe1f1f0cb2eb66186ab6ce67dcd5509943ed092"
    "cs"
  end

  language "de" do
    sha256 "f93fae9328c17fb2e9f78c8f160ac4f605fc101806e7e4126826e4ced5c2133d"
    "de"
  end

  language "en-GB" do
    sha256 "9b8c994e001782c5cd67766403a2b7ab348d040e02bce9de624d00c9d56016f2"
    "en-GB"
  end

  language "en", default: true do
    sha256 "b7e8104d32f56e3cc03643068c6aa444bfa591c874b72cff411add1534eaa013"
    "en-US"
  end

  language "fr" do
    sha256 "b974f315e086fbe766c0d3f198657cd1e162a7df659712af8b1304b2f269615a"
    "fr"
  end

  language "gl" do
    sha256 "f7e72f7cf9d8c34a73ace9952de244aef8dfc131c51c6de71fcb0936bd80fe60"
    "gl"
  end

  language "it" do
    sha256 "2801a1a8d10973f567a3a1f9b47cbcc6108faff187296e10b90b43e5f664c3e4"
    "it"
  end

  language "ja" do
    sha256 "7d7a20fb7402d12729167f9a78193ff3931a3a56dcc13015a8f5125949f73266"
    "ja-JP-mac"
  end

  language "nl" do
    sha256 "91cfce60a4f30fa2984731e06de6826dfffa9fec05da1b76e8e661713af16534"
    "nl"
  end

  language "pl" do
    sha256 "f08cbee4a66e508431f488aa0ab8639730d90670b605ba3244467128e5e139ae"
    "pl"
  end

  language "pt" do
    sha256 "94595b3d69ed98eee978f3cd137e72dae7bc74050465afdbb202b9af620b9988"
    "pt-PT"
  end

  language "ru" do
    sha256 "e6dec207f2d3dfb8b57cd79a4cfb5b52f0468ec30dc2034aeb7e893870b978ae"
    "ru"
  end

  language "uk" do
    sha256 "a2401c19acff77f035136fc14d9959d444b009f67b89fbed9c2c249075d3faa4"
    "uk"
  end

  language "zh-TW" do
    sha256 "c9e196b490636a515b72d6b844f82562a7405c8d2a721fe898c7a80fe8336b36"
    "zh-TW"
  end

  language "zh" do
    sha256 "929c1a95ff75744ddb2077d4fbb5711299c529f46ddea8f1f6c22438dba11730"
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
