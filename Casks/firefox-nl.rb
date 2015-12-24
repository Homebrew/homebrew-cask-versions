cask 'firefox-nl' do
  version '43.0.1'
  sha256 'f54d2e22b34b859ec77b1c9fd0c8bdb87cd31cb5cbc04078ba70911b025fac98'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
