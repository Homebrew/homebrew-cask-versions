cask 'thunderbird-nl' do
  version '45.2.0'
  sha256 'cf324c044d7299970ec960ce5c0316f2af6ad0b9fda2bdb085339bc526424b57'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
