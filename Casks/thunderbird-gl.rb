cask 'thunderbird-gl' do
  version '38.7.0'
  sha256 '9555a5a1482d0dd402009ed3c7360ff60d8991749dd56122c5453f6ffac27093'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
