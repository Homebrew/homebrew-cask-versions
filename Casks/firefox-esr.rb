cask 'firefox-esr' do
  version '45.3.0'
  sha256 '553bb7f6a07e938d2fcb3ce08e4ad04b8448ed7a38048b680103a08c5000cf3d'

  # mozilla.net was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/en-US/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
