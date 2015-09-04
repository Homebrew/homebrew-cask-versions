cask :v1 => 'firefox-beta-gb' do
  version '41.0b6'
  sha256 'b02546810197a52f855cfeaada98138092ebac96f84889db5089b30f2b5f7b36'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  name 'Firefox'
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
