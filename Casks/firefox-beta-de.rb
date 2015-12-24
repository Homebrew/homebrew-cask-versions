cask 'firefox-beta-de' do
  version '42.0b9'
  sha256 '2465a89e18fedb31c0678caa3e5111989e75bd45754d95c8192bdc9d6e19ef19'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
