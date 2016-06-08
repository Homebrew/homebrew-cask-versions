cask 'firefox-esr-zh-cn' do
  version '45.2.0'
  sha256 '5b9aa224c4bfa3bf960b62a0a1bba72d81b46cc95f1c09454549adaa4681a02f'

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/zh-CN/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
