cask 'openbazaar-beta' do
  version '2.2.0-rc3'
  sha256 '4c601f99803bb5ac2a44fecf68482895a205080f1ec0195a1d0065f134c2890c'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '2ee5b2c7ffabcd3b6357e7192d80dad9143454be97c0747e7ed5f53f9a789070'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
