cask 'thunderbird-nl' do
  version '38.7.0'
  sha256 '46c06fbcd7d1051aec555a0dc667a2538df11725dce07fd19a8388a67cae885b'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
