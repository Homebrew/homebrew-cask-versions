cask 'firefox-uk' do
  version '48.0.1'
  sha256 'dbf08920a47acf7bc975e319e2f8b7e38675e5809cb42f60e739368a00990ad7'

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
