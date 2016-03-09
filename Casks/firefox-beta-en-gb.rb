cask 'firefox-beta-en-gb' do
  version '45.0b10'
  sha256 '2b8cd4cfd52383084b44b364c4ce34a731cd7fa0fb7774daa4ee2554748b8baf'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
