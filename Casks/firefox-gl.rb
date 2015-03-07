cask :v1 => 'firefox-gl' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=gl'
  name 'Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
