cask 'keepassxc-beta' do
  version '2.4.0-beta1'
  sha256 'd31a870a645f9b7cb1ac6804d09fb9bffa4ffe4726f5340ea94fcea8cc2622f3'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  conflicts_with cask: 'keepassxc'

  app 'KeePassXC.app'

  zap trash: '~/.keepassxc'
end
