cask 'thunderbird-nl' do
  version '45.1.1'
  sha256 '3a869c7125281af8d5809b31e1c11c21dfe8316ed74fc69efc8b2d9e57525f28'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
