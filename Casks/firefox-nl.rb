cask 'firefox-nl' do
  version '44.0'
  sha256 '1ac2f89073e6024dfcd19e66108c92da9866a366037972baafc3f13a4e8c6df7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
