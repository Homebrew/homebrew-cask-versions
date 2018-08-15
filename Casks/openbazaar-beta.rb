cask 'openbazaar-beta' do
  version '2.2.4-rc1'
  sha256 '840b73701001acf063b342535e93fb5a244bd45a396dfc03f339b6dcd44f4718'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
