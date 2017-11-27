cask 'exoduseden' do
  version '1.39.3'
  sha256 '0c6a50c7cf865d6d9afc398a9dc8804c4338493a08876ed646b6e1967fc3f2c0'

  # exodusbin.azureedge.net/releases was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-eden-macos-#{version}.dmg"
  name 'Exodus Eden'
  homepage 'https://www.exodus.io/eden/'

  app 'ExodusEden.app'
end
