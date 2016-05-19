cask 'firefox-beta-uk' do
  version '47.0b6'
  sha256 '04460b7ec40e21f2cbb4a9f005995bc11e6d0c7a9f66eef3c715155a08242664'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
