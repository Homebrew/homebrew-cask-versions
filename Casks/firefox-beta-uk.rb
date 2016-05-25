cask 'firefox-beta-uk' do
  version '47.0b8'
  sha256 '3a5a0d33f4dcf7e08ad3067efa747c0acfa035044dcfff6e2f5b5f7adcf4d564'

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
