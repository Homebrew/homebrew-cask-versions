cask 'firefox-beta-uk' do
  version '50.0b1'
  sha256 '654ef1d5fc213abe4ed017232d9143e48ec79842097f12b935d701d6d1aa17e8'

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
