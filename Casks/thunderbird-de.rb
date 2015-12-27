cask 'thunderbird-de' do
  version '38.5.0'
  sha256 'c56d0a1c714462bbb26f864e834f3633ee3c61c5e89cdac83d8747d396b96a50'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
