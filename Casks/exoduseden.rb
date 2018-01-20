cask 'exoduseden' do
  version '1.43.1'
  sha256 '5aea2c670763b4814786b6bee93a338bce1e875a4971b3a31b6bb5d74879b66c'

  # exodusbin.azureedge.net/releases was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-eden-macos-#{version}.dmg"
  name 'Exodus Eden'
  homepage 'https://www.exodus.io/eden/'

  app 'ExodusEden.app'
end
