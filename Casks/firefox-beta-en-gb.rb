cask 'firefox-beta-en-gb' do
  version '50.0b1'
  sha256 '181ca3cc496c149b1b3d6568d9eb73f59788c193e7a112d9b5b2ed1ab471797a'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
