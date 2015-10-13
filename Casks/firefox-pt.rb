cask :v1 => 'firefox-pt' do
  version '41.0.1'
  sha256 '27047ff2694f0f43f4ce6d5b22e87f797f1dd64d28f49d01843ed68e09e53023'

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
