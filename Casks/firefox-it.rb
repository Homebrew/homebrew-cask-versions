cask 'firefox-it' do
  version '47.0'
  sha256 '510b7d603d8edf83d1dc36c8e146e08e0d5696c4671f80669bbbc7aaeea1e64c'

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
