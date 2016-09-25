cask 'firefox-de' do
  version '49.0.1'
  sha256 'f7b1d7cb6c14a53e1857d3e6982ed63a00c97bf44051a67c9370f295b6d749da'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
