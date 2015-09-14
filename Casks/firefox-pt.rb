cask :v1 => 'firefox-pt' do
  version '40.0.3'
  sha256 '9d295f63bbc05bbbc73d491bfa223ef41f41ef2d73986e3c1c5b9fefbfed3eda'

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
