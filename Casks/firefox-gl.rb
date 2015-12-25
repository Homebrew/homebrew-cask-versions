cask 'firefox-gl' do
  version '43.0.2'
  sha256 'fd380841c3e929c084510558284fc0fa9a655a158dde21acf9850eea5374fe5c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
