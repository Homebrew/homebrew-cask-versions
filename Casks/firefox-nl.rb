cask 'firefox-nl' do
  version '43.0.3'
  sha256 'ce576504cb96202edbfb00c4f6bbabdb6ca4267167ed0058c86cd33b843d661b'

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
