cask 'firefox-esr-ru' do
  version '45.4.0'
  sha256 '06a001fb135e78a92c23538db9bbc9111107676fc4dd17540b9af54cb09f5c97'

  # mozilla.net was verified as official when first introduced to the cask
  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
