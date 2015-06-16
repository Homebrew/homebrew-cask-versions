cask :v1 => 'thunderbird-beta-uk' do
  version '38.0b6'
  sha256 'e371cf23828dc820887b1dcc3192f4f5785ab9decede491ebb6f1fa551adbc96'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
