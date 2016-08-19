cask 'firefox-gl' do
  version '48.0.1'
  sha256 'f5b95354a5ed607fdc0fc5a3796dae0f9b2f5a9d4b2653eb20fa458887128a54'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
