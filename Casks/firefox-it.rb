cask :v1 => 'firefox-it' do
  version '41.0.2'
  sha256 '6e475b1e1f33d12946ecbf996702108d2ec86fc69ed0d5839ae145132eac95a3'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
