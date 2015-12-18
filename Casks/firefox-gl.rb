cask 'firefox-gl' do
  version '43.0'
  sha256 '7f4a29fba19784058550f261d37c93aa8c6ec93749258eda026060faa8631b1c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
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
