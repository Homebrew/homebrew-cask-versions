cask 'exoduseden' do
  version '1.57.0'
  sha256 '4b634cfdd91b618cb128b0b9260dbfe60815e268fff52bc1e9839901285219f6'

  # exodusbin.azureedge.net/releases was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-eden-macos-#{version}.dmg"
  name 'Exodus Eden'
  homepage 'https://www.exodus.io/eden/'

  app 'ExodusEden.app'
end
