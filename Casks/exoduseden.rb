cask 'exoduseden' do
  version '1.40.0'
  sha256 'd508c2d85f18a59c0cdbce57874fd9be2776481b30269d4a438e45acd48edf71'

  # exodusbin.azureedge.net/releases was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-eden-macos-#{version}.dmg"
  name 'Exodus Eden'
  homepage 'https://www.exodus.io/eden/'

  app 'ExodusEden.app'
end
