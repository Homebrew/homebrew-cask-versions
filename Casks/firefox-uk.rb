cask 'firefox-uk' do
  version '45.0'
  sha256 'd4292abfb05681ff2987eaf03e97010ab1c485a759c90674105866f5dea56d04'

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
