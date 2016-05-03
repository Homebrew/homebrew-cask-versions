cask 'firefox-pl' do
  version '46.0.1'
  sha256 '4269012f767ce06b0d75e26476755011d0ef10da6152a7a4f4999652dc59ed02'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
