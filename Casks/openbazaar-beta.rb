cask 'openbazaar-beta' do
  version '2.2.0-rc1'
  sha256 '57a22b6236c07a7c9556ef7878839a0a7d23f9fe8583e3ea8370dd4009e3322e'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '3132e37c7f9dbce7252c800a6837dfa9d98ec9f7aa80eda718861214b4e9f465'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
