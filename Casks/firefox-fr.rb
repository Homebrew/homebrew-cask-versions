cask :v1 => 'firefox-fr' do
  version '41.0'
  sha256 'dd7710e18e63b96a9ec4aed8ad867eb351fc4bffcc477d4ed0eddc6527548ccb'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
