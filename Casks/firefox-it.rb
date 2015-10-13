cask :v1 => 'firefox-it' do
  version '41.0.1'
  sha256 '352fff67fa55fc640de36336919d424fc4c62344724e971cf5849a884c76490c'

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
