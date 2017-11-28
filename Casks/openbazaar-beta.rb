cask 'openbazaar-beta' do
  version '2.0.18-rc2'
  sha256 '1a163f1fa34d4ed682bd238a5584ffed4c5e42ccc866f3a2dde0dc3623aa58e9'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '71967326da6ee26d7a76ba7c4fd404af304ea2921575a772e05697f55af4d8ec'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
