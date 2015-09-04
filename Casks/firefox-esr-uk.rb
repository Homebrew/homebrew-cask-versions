cask :v1 => 'firefox-esr-uk' do
  version '38.2.1'
  sha256 '0b2fbdd4569724b3b7fc61c6496193c9d1e6c273636eb081ffb99d0130f4a375'

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
