cask 'firefox-beta' do
  version '49.0b3'
  sha256 '70d69ac6c8c31edad34c5924e91a8419b737c574cd3b97a75adcf4ecf23d636e'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
