cask 'firefox-it' do
  version '44.0.1'
  sha256 '2c0126182cff41c16ce0f8f22197da1bc924209a99eb43c259441f4eae68ce5b'

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
