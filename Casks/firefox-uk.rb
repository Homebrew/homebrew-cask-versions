cask 'firefox-uk' do
  version '46.0.1'
  sha256 'ff49ba807facca7977f0d8270cab2b5bb30bd96fa9350c048bb579cffc6dfffa'

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
