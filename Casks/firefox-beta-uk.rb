cask 'firefox-beta-uk' do
  version '47.0b9'
  sha256 '3c9556321f541941c0c5a869cab0eb315aa4c3b9084effc6b3c76020569e4417'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
