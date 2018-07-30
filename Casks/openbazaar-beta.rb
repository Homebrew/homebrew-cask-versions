cask 'openbazaar-beta' do
  version '2.2.3-rc2'
  sha256 'e5239eac4c9ece570d14c653503f68bea0b7c7c0aca89943b8274b21f0169618'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
