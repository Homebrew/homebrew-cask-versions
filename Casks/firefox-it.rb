cask 'firefox-it' do
  version '43.0.3'
  sha256 'aa00fefedb42538cf4d3f4b3ea1a778b48023bc4194c4bfad38c3bc02eb81208'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
