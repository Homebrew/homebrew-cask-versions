cask 'firefox-fr' do
  version '43.0.4'
  sha256 '3f56b67ce36887d92736590d40090b3c3b06a0d14f2f2bfd4b9e00744325a7c1'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                   '~/Library/Application Support/Firefox',
                   '~/Library/Caches/Firefox',
                 ]
end
