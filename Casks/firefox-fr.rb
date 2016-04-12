cask 'firefox-fr' do
  version '45.0.2'
  sha256 '3c4d2493b9cc17f500e24a3a5facbefde79bac6b989cb739b7341327ad2a79d7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
