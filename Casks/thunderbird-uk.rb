cask :v1 => 'thunderbird-uk' do
  version '38.2.0'
  sha256 'e3e806836ac9cdc0003ee9a0e7d62045edb75399f5f796622834dc19315f1d27'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/uk/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
