cask 'thunderbird-fr' do
  version '38.4.0'
  sha256 '39688629e15161619541811e4bfe1e0b420efc3b4b9d23e55b8b3a9f775c0b0a'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
