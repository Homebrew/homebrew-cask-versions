cask 'firefox-beta-uk' do
  version '47.0b4'
  sha256 '75992a93510d9dbcd0d5e1e7fe17c161c1dd8689084b1a89001bdb9f9bca2127'

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
