cask :v1 => 'firefox-gl' do
  version '41.0.1'
  sha256 '7c3aa54ab2ed2f997f7ded034b37e1a3248c2d93e78273f20e701f5997a79b25'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
