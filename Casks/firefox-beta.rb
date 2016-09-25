cask 'firefox-beta' do
  version '50.0b1'
  sha256 'cebc0f7c6f6107ef620ae651a154e61fe4b18759d8fbd401b2088f3bb2a8b499'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
