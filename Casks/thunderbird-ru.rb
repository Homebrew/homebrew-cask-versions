cask 'thunderbird-ru' do
  version '45.1.0'
  sha256 'ddd00d0eabe32a121d8ce307bf00caaf06245d5e7299422a1ac12e71a520ce66'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
