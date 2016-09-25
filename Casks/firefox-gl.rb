cask 'firefox-gl' do
  version '49.0.1'
  sha256 '984cee045a7aefeb4e4adc4ba2e0056775a39a758a7fdea3597efbafc9eeac22'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
