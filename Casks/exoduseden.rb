cask 'exoduseden' do
  version '1.46.0'
  sha256 '78b2b62e39dd13c033ecf26bf49c992666fede685e4aef0f3a6f819f2b162222'

  # exodusbin.azureedge.net/releases was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-eden-macos-#{version}.dmg"
  name 'Exodus Eden'
  homepage 'https://www.exodus.io/eden/'

  app 'ExodusEden.app'
end
