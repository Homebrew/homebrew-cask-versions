cask 'openbazaar-beta' do
  version '2.1.1-rc2'
  sha256 '063372b2307f37a86fefd16c4e7a6cc608774d6d22bd8ea5a36d65343a1c255d'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '6997a37c94e82aa771c135fcad27e0d2f6f009e2ba16573362e10bf5804f2824'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
