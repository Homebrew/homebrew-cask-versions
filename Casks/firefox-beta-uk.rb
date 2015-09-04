cask :v1 => 'firefox-beta-uk' do
  version '41.0b6'
  sha256 'c21afeee6b6bbd10b32e39a8949e47fc5953c55ff317dc21380d390375cb4e7f'

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
