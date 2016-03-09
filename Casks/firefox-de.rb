cask 'firefox-de' do
  version '45.0'
  sha256 '46e2fa470b447d64a46f9739f645382a0e6af1a77b5f0f9c8b0c46c22fc93f59'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
