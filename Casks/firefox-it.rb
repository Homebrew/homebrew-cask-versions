cask :v1 => 'firefox-it' do
  version '40.0.3'
  sha256 '464791ce0c94311540a85f5e3636a3d6bc4ad9c3622c5a1a398092510db33360'

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
