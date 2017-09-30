cask 'openbazaar-beta' do
  version '2.0.13'
  sha256 '0c0ab945693f56dace5ce1ddcf5e8008013e11dccd9edef429c111ef86227ed7'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '689261ade1ecce83162a64f29ba4d0572e0c7d2375c95185b8d882d96010c621'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
