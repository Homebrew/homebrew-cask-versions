cask 'firefox-beta-en-gb' do
  version '47.0b5'
  sha256 '35c605daccd15ca3af596feed2647455301feab6a056bae9f811567207598652'

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
