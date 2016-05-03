cask 'firefox-gl' do
  version '46.0.1'
  sha256 '82c272e248e0366b285b46c46ed6cce8b7d2dc46145ad8c7afce4df1f2513ca0'

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
