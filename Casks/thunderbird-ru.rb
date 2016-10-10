cask 'thunderbird-ru' do
  version '45.4.0'
  sha256 '8b108549253327f4dd64102c182377bfce9b521ecbade02e4cc3cfcf30654f50'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'

  app 'Thunderbird.app'
end
