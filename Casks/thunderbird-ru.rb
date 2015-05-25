cask :v1 => 'thunderbird-ru' do
  version '31.7.0'
  sha256 '0cc9afe50eb2be6bb43ce88078cddf085466e7559f1da3ddf99bcc7386265361'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/ru/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
