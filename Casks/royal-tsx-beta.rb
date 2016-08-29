cask 'royal-tsx-beta' do
  version '3.0.0.31'
  sha256 '2c746fe1e35207fb4ef125989795c128a5f1f2b95132c3e30ff6f5cee83f5b15'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '6bd6554b47634c39227347cfaa2e55af4b5ad9c5a1e49dae9ded02d11c705c9d'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
