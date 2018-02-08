cask 'openbazaar-beta' do
  version '2.1.0-rc5'
  sha256 '97e107079221ec5ee75afbf8e769a1b51f0b2835297c3e359d824ca4e2edd342'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '060cbe45d601cf3c11ecb73be33cf431e919459967f4cf5549466c2bd8da5b42'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
