cask 'thunderbird-de' do
  version '38.7.2'
  sha256 '1a98369b731fc8d5767a954a102e56d3233aed3f11581ed09c9a4863aeb4e226'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
