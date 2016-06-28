cask 'firefox-de' do
  version '47.0.1'
  sha256 'ea2e0c6e9e33728cd720825ccd0b3af63f8ba5fe766eb6283cec07c52f59bd39'

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
