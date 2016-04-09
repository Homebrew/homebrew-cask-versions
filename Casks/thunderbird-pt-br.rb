cask 'thunderbird-pt-br' do
  version '38.7.2'
  sha256 'f211c9a41624b9e631aa9c706c8603b501a3c5cb2ee8c9f6c4d98997ff4c6662'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
