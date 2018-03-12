cask 'openbazaar-beta' do
  version '2.1.1-rc4'
  sha256 '9a0a2a657f842114b86b31edcbe1fb540ee237622cf4c683318b4e0296149ab0'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '17e788609b7086dd6752916a5ed6a555c9274027adf20c531942cf1d5a6206c7'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
