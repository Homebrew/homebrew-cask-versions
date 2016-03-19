cask 'firefox-gl' do
  version '45.0.1'
  sha256 'd107d0b5bfde2326f3cf1940a8dec928cc5285ae028ff73a1a448e68ab7e7c90'

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
