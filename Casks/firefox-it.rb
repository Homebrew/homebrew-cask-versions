cask 'firefox-it' do
  version '45.0.1'
  sha256 '4a611631325b04e3717f599aa2df31860fb047c3acd9c16422b85f254d9f495c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
