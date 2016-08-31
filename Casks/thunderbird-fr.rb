cask 'thunderbird-fr' do
  version '45.3.0'
  sha256 '4579c2d343a09d5a2ed0909455cc2a8d4ddc43a0760cabbf3cfa64cba871c222'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
