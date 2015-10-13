cask :v1 => 'firefox-nl' do
  version '41.0.1'
  sha256 'f9ba439657be0f94a2ffc52b3870ca69828ed7bbf7731359950036522e93189b'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
