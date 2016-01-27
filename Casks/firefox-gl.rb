cask 'firefox-gl' do
  version '44.0'
  sha256 '6f2caca0a3829c39d59389d357dd3ae471cc9ee2b7d8d34ac29023c84249dd4e'

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
