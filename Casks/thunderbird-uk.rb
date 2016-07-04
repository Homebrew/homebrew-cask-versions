cask 'thunderbird-uk' do
  version '45.2.0'
  sha256 '5da5c305dc6149eef4ab8f71e506f4cca254b4e44543cb859b26cdb3d70ca84d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/uk/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
