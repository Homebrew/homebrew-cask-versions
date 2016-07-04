cask 'thunderbird-it' do
  version '45.2.0'
  sha256 '3b7bbced9617b59bb23e35d9e84077b17e7e90020fd575888b9f3d66dce8d3e2'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
