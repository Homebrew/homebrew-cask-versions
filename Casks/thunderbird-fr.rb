cask 'thunderbird-fr' do
  version '38.5.1'
  sha256 'dba6d6859fca6e08ccf535323881c17c42ddb39b602c6e615a5769091dd69c5e'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
