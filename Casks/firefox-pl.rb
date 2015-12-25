cask 'firefox-pl' do
  version '43.0.2'
  sha256 '75e83dd7c537dc4dfaf6423dfceba67551ba22da239baf197b8a3a72e0b2ab5f'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
