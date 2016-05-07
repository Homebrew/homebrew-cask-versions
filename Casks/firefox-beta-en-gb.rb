cask 'firefox-beta-en-gb' do
  version '47.0b3'
  sha256 'f93920715f9f0b16e340e19c8810b5d84a6aac793cc50667d3cc0deaefa5035d'

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
