cask :v1 => 'firefox-gl' do
  version '42.0'
  sha256 '0faf1b7273cc4fb7e085b4bddbb9b7750284ba23291e8ba7561aa62433630373'

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
