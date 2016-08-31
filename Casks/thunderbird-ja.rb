cask 'thunderbird-ja' do
  version '45.3.0'
  sha256 '0b7b46c00d56abcff68f6b8bbc89c40f267c2163c79f48e9fb01db2eedb840d4'

  # mozilla.org was verified as official when first introduced to the cask
  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
