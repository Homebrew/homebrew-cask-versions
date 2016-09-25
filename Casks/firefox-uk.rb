cask 'firefox-uk' do
  version '49.0.1'
  sha256 '7e6daa83a3f3ce5332722bf8024cbc41b40c5690391e1203b386db9a56bc945c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
