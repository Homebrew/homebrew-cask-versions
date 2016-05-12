cask 'thunderbird-de' do
  version '45.1.0'
  sha256 '8b12a919f36ebb140bf3610c1c083658f1f2bc3a53ccce706ea0be5542627414'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
