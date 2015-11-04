cask :v1 => 'firefox-pt' do
  version '42.0'
  sha256 '0c9f7b3ee9a0196d5afafd35c8c601dd4cac789f0a74ba421f4adc21e1f14c49'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pt-BR"
  name 'Firefox'
  homepage 'https://www.mozilla.org/pt/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
