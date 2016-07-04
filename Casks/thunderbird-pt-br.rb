cask 'thunderbird-pt-br' do
  version '45.2.0'
  sha256 'd88e9aac6d7a13bbeae522ccb1603bc39c84d485ae5ee2cbff9b4ce682c9ba27'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
