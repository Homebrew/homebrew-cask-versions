cask 'keepassxc-beta' do
  version '2.5.2'
  sha256 '9755d3f16b98db6f8d25e02a445a0b7f4aae822e514105cec02df4c25b53f993'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  conflicts_with cask: 'keepassxc'

  app 'KeePassXC.app'
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: '~/.keepassxc'
end
