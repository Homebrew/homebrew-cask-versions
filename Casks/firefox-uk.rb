cask 'firefox-uk' do
  version '44.0.2'
  sha256 'd74a9596a173b9cbbc183dc7237c2952685c8b83eb4828cf86d036094d8f5183'

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
