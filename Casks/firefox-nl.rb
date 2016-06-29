cask 'firefox-nl' do
  version '47.0.1'
  sha256 'aec099f894d5eed968edcc243c61c2bd906dbb826fbce4acdf3bfe3d8d4429ca'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
