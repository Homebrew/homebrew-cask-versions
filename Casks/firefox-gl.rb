cask 'firefox-gl' do
  version '47.0'
  sha256 'c72964f29dc6fcc7beef9ae8f0385eb39d4658af95380ed15e8db52685eb6af9'

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
