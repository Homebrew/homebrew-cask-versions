cask 'thunderbird-pt-br' do
  version '38.7.0'
  sha256 'f0bf5f8c2eda8cffdad2c816603b7f85a0c889f5fdba3539e6b6dbe4ca44450e'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
