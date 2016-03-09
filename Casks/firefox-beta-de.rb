cask 'firefox-beta-de' do
  version '45.0b10'
  sha256 'd4ad08aa487cb412d6f9ea4707235e6443dfb54657fda5540b9e9e829ba33fe7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
