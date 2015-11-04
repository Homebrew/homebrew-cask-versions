cask :v1 => 'firefox-uk' do
  version '42.0'
  sha256 '077d755893d5e44ac8b8f52bb38696a0f2d5362cfcaaf90876bbbd1cbed22cb4'

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
