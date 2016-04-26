cask 'firefox-gl' do
  version '46.0'
  sha256 '6605d23a1756eae78d566c5702ec987b316247dcf41da69a5b246c5faddbe901'

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
