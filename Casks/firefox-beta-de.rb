cask 'firefox-beta-de' do
  version '47.0b2'
  sha256 '5e2be7456f851b2a3a38053bd11292cf0a10c675a659ed323fc50d49b4dfc968'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
