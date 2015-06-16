cask :v1 => 'thunderbird-beta-ru' do
  version '38.0b6'
  sha256 'ea2da71390d9499756fc125a6c33e030df7447a0385c84ee2d6ed5da59a97a4d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
