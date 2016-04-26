cask 'firefox-uk' do
  version '46.0'
  sha256 '7f54b2030136e399dabb9e33ad7328fc9c7d1153cf1d2fa0db3a995f68ab298e'

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
