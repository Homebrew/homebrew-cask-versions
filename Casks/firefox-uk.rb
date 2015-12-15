cask :v1 => 'firefox-uk' do
  version '43.0'
  sha256 'ef9289688b3f841c5f27f6a190627052788dd4cdbe659c9344ac6f4d56dbee5e'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
