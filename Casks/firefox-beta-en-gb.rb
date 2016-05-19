cask 'firefox-beta-en-gb' do
  version '47.0b6'
  sha256 '505ba6807f65308a0c13d9fcc4e095a2454f14881af944d918bcb1a50b051d69'

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
