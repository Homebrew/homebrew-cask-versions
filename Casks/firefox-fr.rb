cask :v1 => 'firefox-fr' do
  version '43.0'
  sha256 '01baf7e62cbc63a63198c57545f5ee0d4d1c9b66ef6d5d36df2fe03c02e35eb0'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
