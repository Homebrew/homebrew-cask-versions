cask 'firefox-nl' do
  version '43.0.2'
  sha256 '4363e1eb580e621db3c4e7a16b516df6224e88bf5262d9e72f05fc5ff9bbf913'

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
