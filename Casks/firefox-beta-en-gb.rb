cask 'firefox-beta-en-gb' do
  version '47.0b8'
  sha256 '03bc157f0770e8991115dd8c10971256105c64ba9fe768875463ba4d55c52b69'

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
