cask 'royal-tsx-beta' do
  version '3.0.0.5'
  sha256 'ce7ba3b943d123eccb1d8ea1d0d514e30aa36ceba13d3027405eb989e51d1891'

  # royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v#{version.major}.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_beta.php",
          checkpoint: 'f9bb37d06e78d9c74afdb99a2db1eee6fbc95367f221e73b257adfe372d83d24'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
