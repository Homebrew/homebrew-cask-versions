cask 'firefox-gl' do
  version '43.0.3'
  sha256 'c4f01fd71aa78382e92bb61f8ff3ad35ea3966edb4dd70ed1b3588440b3b8a47'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
