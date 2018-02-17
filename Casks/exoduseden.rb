cask 'exoduseden' do
  version '1.45.0'
  sha256 'a37b7d9ef29cae21dfbe2530bb1603d970e26fd0cf6b9dc384852049e2ecb5bb'

  # exodusbin.azureedge.net/releases was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-eden-macos-#{version}.dmg"
  name 'Exodus Eden'
  homepage 'https://www.exodus.io/eden/'

  app 'ExodusEden.app'
end
