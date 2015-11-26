cask :v1 => 'thunderbird-uk' do
  version '38.4.0'
  sha256 '3ff81b18a6b4a501491459c94b4e4bd70039129fa0e51f05a280d707b41178cf'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/uk/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
