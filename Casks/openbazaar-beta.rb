cask 'openbazaar-beta' do
  version '2.1.1-rc3'
  sha256 '161bc5f169d4f4dea71a08cfc36d107eb4db3d565b125df51b6f62cb10469102'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: 'fb35c19f22653824824766e24dd2e185f2886af01391fdea2b0542f48c2e06c6'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
