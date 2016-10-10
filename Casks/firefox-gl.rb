cask 'firefox-gl' do
  version '49.0'
  sha256 '1a33fcb5cae4b2b029eff62cc74409ec85c3f77c977888e19af7ca4d3e6abd16'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
