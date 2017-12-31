cask 'openbazaar-beta' do
  version '2.1.0-rc2'
  sha256 '7f5983d3f8da01a59451627f1fc1819aa6222f95b3dd988ae12eeee07c55185b'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: 'd971d6bc22d6dd49e7b1cee0f219941b2b746a03f81d736032ed70222daa3d1f'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
