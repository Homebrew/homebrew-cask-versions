cask 'firefox-gl' do
  version '44.0.1'
  sha256 'b01e3b3f2b7f5d94c786464df80e73a9f0864b76855a57cad586a5e71bbb001a'

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
