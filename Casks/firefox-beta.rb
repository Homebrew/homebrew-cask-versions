cask 'firefox-beta' do
  version '49.0b10'
  sha256 '37b21bbeb29fd6304b183d28214f402012a6b734d0d88f2bf4cfc953094e0e2c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
