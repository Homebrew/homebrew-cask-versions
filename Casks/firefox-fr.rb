cask 'firefox-fr' do
  version '43.0.3'
  sha256 '3bac6d4ec1182d0d535e8ec220c736abc6eefd444331778cf6da741a05e865fd'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
