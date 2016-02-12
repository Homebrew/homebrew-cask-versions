cask 'firefox-ru' do
  version '44.0.2'
  sha256 'ee1d55904f04aaa0ac41d12e0d5e65ece8bfcd1dab4b1b79804098cc8e8920e0'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
