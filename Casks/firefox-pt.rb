cask 'firefox-pt' do
  version '43.0.1'
  sha256 '7f14555a63fe2b9aeb4f28a670135de8572b8a5f0460fdc9e2d7532661f4e95a'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pt-BR"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/pt/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
