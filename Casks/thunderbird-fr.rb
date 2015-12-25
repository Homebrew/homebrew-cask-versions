cask 'thunderbird-fr' do
  version '38.5.0'
  sha256 '5680de795144e5751547c0e341c8b7da350c445383645aefea38b7d97a0b85db'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
