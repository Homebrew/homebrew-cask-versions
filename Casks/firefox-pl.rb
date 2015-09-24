cask :v1 => 'firefox-pl' do
  version '41.0'
  sha256 'f224cbd621b15e8f6d54450cdabfc7d2132860511db02e8cce50d1c9a85c3d3f'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
