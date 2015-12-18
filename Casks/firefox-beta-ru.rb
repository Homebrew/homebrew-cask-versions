cask 'firefox-beta-ru' do
  version '42.0b9'
  sha256 '86e76ecdf0965b17dd222456095abd0f42f74f0e57deccb8c1c7981e0b763f6f'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
