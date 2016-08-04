cask 'firefox-beta' do
  version '49.0b1'
  sha256 'cecffb8f8fff7d9c1b436b3a7a0ca041a64777f473f69a52af21c17a4d4f012f'

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
