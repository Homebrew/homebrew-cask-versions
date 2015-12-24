cask 'thunderbird-gl' do
  version '38.4.0'
  sha256 '92737c74d0cc56f1eb57e57de15663bbe5ad9fa36ebc4f1d8258dc3e78f1db4f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
