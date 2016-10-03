cask 'firefox-beta' do
  version '50.0b3'
  sha256 '94bfe1b01ec0a7e2a870be7f52655f4ed05fb71143c025bfa1327ac64ff53609'

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
