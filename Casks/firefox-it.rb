cask 'firefox-it' do
  version '48.0'
  sha256 '708a1d3e378e26f9302976a2b8265900f177d19da3a1ece46235c5551c7306b1'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
