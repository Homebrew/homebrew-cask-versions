cask 'thunderbird-nl' do
  version '38.4.0'
  sha256 '3c4b131893e64d86446b7f0ee9545ecac85a92cf988c65566eb780e68f23a95d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
