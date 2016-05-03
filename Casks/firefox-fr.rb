cask 'firefox-fr' do
  version '46.0.1'
  sha256 'd2e39cd62faf6a7c6d224f164fa0ca2103f81c687208991309f579da8185e793'

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
