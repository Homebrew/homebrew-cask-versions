cask 'royal-tsx-beta' do
  version '3.0.0.37'
  sha256 'd99f9b4620e1c16fc95ca42eb040360f0c67963b4bacd707f1b403eb4d319e0c'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '20b31ecd489b85b41916a397865c0f83c9bf4e3a30712952b37ff23d5e6574ce'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
