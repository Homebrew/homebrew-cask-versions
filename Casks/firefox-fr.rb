cask :v1 => 'firefox-fr' do
  version '42.0'
  sha256 'a67fca25d7af39ce32dfeb9cdebee7c2a4f7839a660a93c3f52ce3479a95658c'

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
