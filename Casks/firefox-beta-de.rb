cask 'firefox-beta-de' do
  version '47.0b7'
  sha256 '058d6da07a967f4e898aef1e61566612776307e338313465cf2b0f17134f251f'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
