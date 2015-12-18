cask 'thunderbird-ru' do
  version '38.4.0'
  sha256 '35c5f112c3434ab60af4d3f5c3ef5883bcac9ce50868e0be2c6ad0e12b459b5c'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/ru/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
