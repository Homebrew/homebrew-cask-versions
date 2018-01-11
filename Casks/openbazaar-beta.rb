cask 'openbazaar-beta' do
  version '2.1.0-rc3'
  sha256 '4eabbac93398efdd7900e0f1bad92bf2d7ab6473f8a2850b3afaf2e02eb6d5ee'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: 'aefae82d5d97d5c99433a504ad33767b12ecf801583ed4e6d9ad9ec1a641a502'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
