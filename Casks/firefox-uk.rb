cask 'firefox-uk' do
  version '49.0'
  sha256 '379322b4aba8df26afe6ebdcb6559740d5c44f4afebeda3b986d8db7bb038373'

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
