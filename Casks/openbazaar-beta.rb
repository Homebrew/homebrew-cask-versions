cask 'openbazaar-beta' do
  version '2.1.1-rc4'
  sha256 '9a0a2a657f842114b86b31edcbe1fb540ee237622cf4c683318b4e0296149ab0'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '1abbf32d91492e58b18fc5be855e5533eaa69731e6999683d1e10e75bc6868d3'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
