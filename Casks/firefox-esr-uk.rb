cask :v1 => 'firefox-esr-uk' do
  version '38.3.0'
  sha256 'b3da0a7b840953cd8728e8860e0e19ae81133455ce4a14f82cf11e80d274e27e'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=uk"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/organizations/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
  
  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
