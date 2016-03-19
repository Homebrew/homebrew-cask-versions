cask 'firefox-uk' do
  version '45.0.1'
  sha256 'c9976bb2bfb5cd2768c623325e14fbbfc5f211687028a4e221646641f9a2ff63'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
