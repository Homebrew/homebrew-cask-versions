cask 'firefox-beta-en-gb' do
  version '48.0b1'
  sha256 '1308620b2af7e711e2bae3eabac171a1713d4279dee1e96b5044c8e1b2ae9316'

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
