cask :v1 => 'firefox-beta-uk' do
  version '41.0b9'
  sha256 'eea9bcf5b3c2a1be7e2a72bbf90478fffd838d8d1be659751db96eb9e19b110b'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
