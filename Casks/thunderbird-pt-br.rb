cask 'thunderbird-pt-br' do
  version '45.1.0'
  sha256 '978a42a138626504ef6688653619e3188a164b67b0f3e5432716a6b95e04f401'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
