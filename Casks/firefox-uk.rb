cask 'firefox-uk' do
  version '43.0.3'
  sha256 '409b53a93c6cc87c0e4049fa23efd7c3748dab2cc404d911ee27badde96a3033'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
