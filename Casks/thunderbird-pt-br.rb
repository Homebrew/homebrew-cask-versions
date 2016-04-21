cask 'thunderbird-pt-br' do
  version '45.0'
  sha256 'a924fac4bf283f59ff57b13f7cd05c10fad7c8529332d17c7c220fbf3e15ec9c'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
