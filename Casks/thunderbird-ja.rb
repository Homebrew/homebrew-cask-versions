cask :v1 => 'thunderbird-ja' do
  version '38.3.0'
  sha256 '0b023a4173b05f59589124db197bac413c4d81f8d53894cb0e2c57ef2b2d53c4'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
