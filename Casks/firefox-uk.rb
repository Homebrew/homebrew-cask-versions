cask 'firefox-uk' do
  version '43.0.2'
  sha256 'd46d61cfb3883aea658b68f04f3732cf84c4ae08deffadab89857648fdcb75d8'

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
