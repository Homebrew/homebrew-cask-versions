cask 'thunderbird-de' do
  version '45.3.0'
  sha256 'f4daf70019bee14db81dd286fca77e6cd22f13682fd6bd65242fe52c22f0b75d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
