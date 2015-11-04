cask :v1 => 'firefox-it' do
  version '42.0'
  sha256 '95828359c0691dea86eddbc3ea2f75b7d387323c09d23f3773a5e6ebc76df4f2'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
