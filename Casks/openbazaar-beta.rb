cask 'openbazaar-beta' do
  version '2.1.1'
  sha256 'f9c036ee04caf8ff61b19fb53da4dc1065fac2582a50b6c485737aa836886e84'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '52021919914e4f964154a1a948cc1dff3afd32885deb120a78922c012a637384'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
