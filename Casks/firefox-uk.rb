cask 'firefox-uk' do
  version '43.0.1'
  sha256 '4e3d06df05c14499f344faa58130f62117b303a27d84764d50e6e697068fb597'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
