cask 'firefox-gl' do
  version '45.0'
  sha256 'd12a1977d62482d3601cf37cf5983bff39cbe9203ea4542b6be7f35de1561c36'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
