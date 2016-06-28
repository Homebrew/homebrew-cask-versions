cask 'firefox-it' do
  version '47.0.1'
  sha256 '24526a91cb6cdd81f6e860d3f30319559fd5babf7a700d74844fc73ff229a00c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
