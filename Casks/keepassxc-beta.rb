cask 'keepassxc-beta' do
  version '2.4.0-beta2'
  sha256 '10c84c663afd83f798d17393d4da2f7921e1b51b0cd9245d306c6592bc622568'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  conflicts_with cask: 'keepassxc'

  app 'KeePassXC.app'

  zap trash: '~/.keepassxc'
end
