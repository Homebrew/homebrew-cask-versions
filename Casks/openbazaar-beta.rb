cask 'openbazaar-beta' do
  version '2.0.20-rc1'
  sha256 '5fa395007652e137c346ce630b4a5fd23e0787656f6676211b3c27cb9b49a5d5'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: 'a1b64c31fa7ba5c7aacdd10983de8be1bd5cd875d04163126b680148f2bb298f'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end
