cask 'firefox-gl' do
  version '43.0.4'
  sha256 'e6ac34afe73eb84f088b6b84289acabb747c8c4ce58063bb04df0742049e2468'

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
