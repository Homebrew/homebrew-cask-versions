cask :v1 => 'firefox-pl' do
  version '41.0.2'
  sha256 'c357c1e967cf583b45cdbd21eac9cc16142abc6edabdc5e165051e51446007c9'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
