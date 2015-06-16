cask :v1 => 'thunderbird-uk' do
  version '38.0.1'
  sha256 'f7b3918160bac05842b295bf99bfe96cbba9697ed423dec1012319282992bc99'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/uk/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
