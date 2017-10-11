cask 'openbazaar-beta' do
  version '2.0.14-rc1'
  sha256 'f28b2e2e005eb1b1cc262d2826ebc28fae49d6f885d8ec5d377330f09e84c5be'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: 'a3d9a444dab82aa16bc202e77efb7d7ae8f49e503e03cf3c754d29e0265eb63a'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
