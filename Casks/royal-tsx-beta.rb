cask 'royal-tsx-beta' do
  version '3.2.1.1000'
  sha256 'f0477253d7f6238ead49d0ae16ebde768c0ef9ec9037a5c2c7680e517d4ac66d'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'd4bfabbcb8db9b19b4c13ea64f456ffc415638a68e5dea85a982adf8ac0ea212'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
