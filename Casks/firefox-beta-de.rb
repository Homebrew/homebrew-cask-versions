cask 'firefox-beta-de' do
  version '49.0b3'
  sha256 'b39711ed47a65f8c78d2957017b8f66488c6c3726ec930ef71a8ac803eee631e'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
