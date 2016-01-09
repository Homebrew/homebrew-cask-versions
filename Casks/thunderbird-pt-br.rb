cask 'thunderbird-pt-br' do
  version '38.5.1'
  sha256 'd2bcd99b8af9243429011287df6fa3abeffbbcde7252068ce620dd089650ad07'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
