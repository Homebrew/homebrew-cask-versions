cask 'openbazaar-beta' do
  version '2.0.15-rc1'
  sha256 '415c9cf4a436c86111df1befb4ffc7f676b0615ccbe79fb666631e2144bd65e0'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: 'b4a15cb3b69a416f6dd8850be1d9108fe4f43179040655d7af7ca5cb904230ec'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
