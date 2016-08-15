cask 'firefox-beta-uk' do
  version '49.0b3'
  sha256 '72cb06a8e2e8fd66583cfa06e8a72ca9bcd54c409b4db681212f8343ff5c6601'

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
