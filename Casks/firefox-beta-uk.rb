cask 'firefox-beta-uk' do
  version '47.0b5'
  sha256 'f9840fabd0c24193d3b76c1aeb6dca4950849ad624e66bad0fc75a2febf241ff'

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
