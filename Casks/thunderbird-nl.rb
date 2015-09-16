cask :v1 => 'thunderbird-nl' do
  version '38.2.0'
  sha256 '5d00093f29f8fd7c62f075fe2b5dc030c1373a0942210cd94752ffba301eaa5c'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/nl/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
