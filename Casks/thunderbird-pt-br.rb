cask 'thunderbird-pt-br' do
  version '45.3.0'
  sha256 '52deef211b46c17b1184894b5313e27b963d99d2acf36229a97727549c68b680'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
