cask 'firefox-beta-de' do
  version '47.0b3'
  sha256 'c08f78f6d91a906ada65754d5baa8353d61e19fd4bed3d0bc3b8289eb2095f2d'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
