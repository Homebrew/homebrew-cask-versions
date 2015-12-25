cask 'firefox-it' do
  version '43.0.2'
  sha256 '77df8036c8daa7465428411654a6c775fd27f32363d558ba80caf27b203fbb32'

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
