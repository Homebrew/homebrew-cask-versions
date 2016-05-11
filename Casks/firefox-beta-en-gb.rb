cask 'firefox-beta-en-gb' do
  version '47.0b4'
  sha256 '0181f08b48bd0195d5d40545914a7d21930734e738631a5648de2cd814a12679'

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
