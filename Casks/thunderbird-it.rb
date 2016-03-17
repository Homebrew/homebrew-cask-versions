cask 'thunderbird-it' do
  version '38.7.0'
  sha256 '82e3dac25a840e0f3337638e49f61b53b9047d2d3191dd6e716393557075d94c'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
