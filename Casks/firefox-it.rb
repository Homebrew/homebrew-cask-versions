cask 'firefox-it' do
  version '49.0'
  sha256 '8f2ae12a20f61589b6b5aee7666d1de6756c19272204ca0f591854dd3fac3cce'

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
