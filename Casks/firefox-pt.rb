cask :v1 => 'firefox-pt' do
  version '43.0'
  sha256 '14d3a4f79fe5a92fd33db1e4c26789a74dd94a0fe46a86b607c2bcbd9400eccb'

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
