cask 'firefox-fr' do
  version '43.0.1'
  sha256 '359b4ffbbf8d56e429c5961500056de781ffcadd84fd3898e503d8ba55f0c6bc'

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
