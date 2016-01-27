cask 'firefox-de' do
  version '44.0'
  sha256 '5411a72b7fc5187db8db808d06e1f7271f6fb2a1b5c43911547a625fa20a1d1c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
