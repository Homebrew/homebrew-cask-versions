cask :v1 => 'thunderbird-uk' do
  version '38.3.0'
  sha256 'aed9ac5ae940c6a43c3a47cc9024041884511a4b3b89b6280d0d6b38fb228ab4'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/uk/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
