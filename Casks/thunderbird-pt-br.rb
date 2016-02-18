cask 'thunderbird-pt-br' do
  version '38.6.0'
  sha256 'f02416f527b755f26d3904c27503c816795c079882c21600ad1e2be453b6d149'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
