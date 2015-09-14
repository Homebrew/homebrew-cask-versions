cask :v1 => 'firefox-uk' do
  version '40.0.3'
  sha256 'a589e2a71f9db4c58af35341fcd97b79264a228910649bd4b4c9a81d0614dd48'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
