cask 'firefox-fr' do
  version '47.0'
  sha256 '8cecc5904aa09d9714b8124a23a621a8e994a4ab4f9cb1cc4607a33efe6ed8e1'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
