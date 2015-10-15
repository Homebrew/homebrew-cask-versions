cask :v1 => 'firefox-uk' do
  version '41.0.2'
  sha256 'f6a811b93e6c610acddc9303027876dee6429af64f6a2fe7dede648b9d58e96c'

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
