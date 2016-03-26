cask 'thunderbird-pt-br' do
  version '38.7.1'
  sha256 '338483c6a008778fccd4e17746b8ddaefa25a38977bab073fcafd6035b495d30'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
