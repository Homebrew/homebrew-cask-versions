cask :v1 => 'firefox-gl' do
  version '41.0.2'
  sha256 '0d5d288c7e9c9540357182ebba2fb1b4977fc3b11bfbec4e5f5d31e6fbb8c2e3'

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
