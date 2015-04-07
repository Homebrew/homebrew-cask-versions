cask :v1 => 'thunderbird-de' do
  version '31.6.0'
  sha256 '2839fd8dcc29108f9b55a801e7533e101dec171195ef3399191e68c8e4e741c8'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/de/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
