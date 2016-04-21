cask 'thunderbird-ru' do
  version '45.0'
  sha256 '4d37392311966dde2d2f11a4c7e883ed89a8deed4de2f9b7a2ca1b61ecf21d0e'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
