cask 'thunderbird-fr' do
  version '45.4.0'
  sha256 '6f6318bb2bb11071e06e83ff52f3fb5b96e2e72b461667fdf173c1c8121d09b5'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
