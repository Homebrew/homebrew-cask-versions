cask 'thunderbird-pt-br' do
  version '45.1.1'
  sha256 '00a33d8629fc4a8534295c9bb093177a15cb7d7ab6b348d1b9e2c803e1eafd10'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
