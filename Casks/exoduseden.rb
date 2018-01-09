cask 'exoduseden' do
  version '1.42.0'
  sha256 '3dea3ac16a75e0cd074f90eeb0d2ffff65def7ba477f0c90991b9ad7a841a941'

  # exodusbin.azureedge.net/releases was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-eden-macos-#{version}.dmg"
  name 'Exodus Eden'
  homepage 'https://www.exodus.io/eden/'

  app 'ExodusEden.app'
end
