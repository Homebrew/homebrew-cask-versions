cask 'firefox-esr-ru' do
  version '38.4.0'
  sha256 '5c1226b4acd02713a9e166004ba8e55aa6300c59078e1d84c34ac19f81edac0a'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                   '~/Library/Application Support/Firefox',
                   '~/Library/Caches/Firefox',
                 ]
end
