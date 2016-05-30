cask 'firefox-beta-en-gb' do
  version '47.0b9'
  sha256 '59e78dcd655204cb50cff7316b3ab49769fc64f7823ac55ef2e56b44c98a4426'

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
