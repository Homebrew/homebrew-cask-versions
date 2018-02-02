cask 'exoduseden' do
  version '1.44.0'
  sha256 'c956194feacfbf0cbf9f01acac0539045d5b0f044c551714264c625d1dbe9274'

  # exodusbin.azureedge.net/releases was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-eden-macos-#{version}.dmg"
  name 'Exodus Eden'
  homepage 'https://www.exodus.io/eden/'

  app 'ExodusEden.app'
end
