cask 'firefox-gl' do
  version '48.0'
  sha256 'fcb8cbe83bb779cb7fed4ff6cac9174e0a0d0778434a8fb9d1d78de775e47520'

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
