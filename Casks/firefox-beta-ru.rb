cask :v1 => 'firefox-beta-ru' do
  version '41.0b9'
  sha256 'f177a767561cd5e01291709d63e05925dac6b88a21538f277680cc909e9eb892'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
