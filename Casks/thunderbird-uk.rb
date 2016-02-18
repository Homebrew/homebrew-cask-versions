cask 'thunderbird-uk' do
  version '38.6.0'
  sha256 '9744e315f8849e00fa1860211ae1ecec8f38c5c32d01c0fad5c6eb2ef9f35b7d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
