cask :v1 => 'thunderbird-nl' do
  version '38.3.0'
  sha256 'cdcc724fdbcdc5c6dbe838368749f2f8c226534b29634bee0c2c8b2aaa0e8425'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/nl/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
