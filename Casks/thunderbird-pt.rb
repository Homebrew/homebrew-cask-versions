cask :v1 => 'thunderbird-pt' do
  version '31.6.0'
  sha256 'c1ed4526759c1e88b000b8d7594919fba257db0c09a6ed3a80ae0f5a70e95d7a'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
