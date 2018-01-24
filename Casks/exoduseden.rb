cask 'exoduseden' do
  version '1.43.4'
  sha256 '30581447bd53b04df5eb72e813daa26392d4cea9ac7591f644962e9930fe785b'

  # exodusbin.azureedge.net/releases was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-eden-macos-#{version}.dmg"
  name 'Exodus Eden'
  homepage 'https://www.exodus.io/eden/'

  app 'ExodusEden.app'
end
