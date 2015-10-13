cask :v1 => 'thunderbird-nl' do
  version '38.3.0'
  sha256 '939c87ad95a90820ae89ebe97321a9e58dc8ed55029b4f5d8937f1bb0259c175'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/nl/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
