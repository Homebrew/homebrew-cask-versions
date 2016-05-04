cask 'firefox-beta-en-gb' do
  version '47.0b2'
  sha256 'f1b6568bd7d84165c12df604f05a303d8a10790f05b5a4c7010dfdcf4c450a67'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
