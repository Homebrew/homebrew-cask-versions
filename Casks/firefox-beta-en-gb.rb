cask 'firefox-beta-en-gb' do
  version '48.0b4'
  sha256 '922b9c42c514fa8da117793047e019ef698cbf4c9cc4d7b7960c104b0d8ba81c'

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
