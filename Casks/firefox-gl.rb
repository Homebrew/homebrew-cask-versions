cask 'firefox-gl' do
  version '44.0.2'
  sha256 '1cface6dd63711d892a80d0f36ca623e69eaeab67247a08f9db6e84ba78953fa'

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
