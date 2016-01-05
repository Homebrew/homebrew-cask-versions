cask 'firefox-beta-en-gb' do
  version '42.0b9'
  sha256 'c42be78190af7fb4fa6c59d8427cb8c5c58c47b92555e175eb2b0824615c0c63'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
