cask 'firefox-nl' do
  version '46.0.1'
  sha256 'bd459a92b4e092734cfbdf032dab4f7ddfe72247a65aa260e6a1e126a0c0b6e7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
