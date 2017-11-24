cask 'openbazaar-beta' do
  version '2.0.18-rc1'
  sha256 '60afd5d26aafbd6d81df7ddaf3615e13b7e75509d260513081aae43ce1f49c83'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '478eb9ea82fff27e59871ca7d2e64c642e98da993efdcd23fa7c1a89622a7f04'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
