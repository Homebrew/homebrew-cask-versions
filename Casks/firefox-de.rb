cask :v1 => 'firefox-de' do
  version '41.0.2'
  sha256 '69d1e623a30a04dc158c6869971a9af181ad70fc556aa54e1eb036fe53a17a95'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
