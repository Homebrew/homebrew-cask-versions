cask :v1 => 'firefox-de' do
  version '40.0.3'
  sha256 '477b973186bd73614c87f33def4b21fb72e84d98d5c2df1a33aa6efc4008ccfa'

  url 'https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de'
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
