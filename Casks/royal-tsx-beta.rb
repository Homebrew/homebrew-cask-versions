cask 'royal-tsx-beta' do
  version '3.1.4.5'
  sha256 '12fe9e602c9dd08f15b52413201a7dbab2416764751bf26db369c78682c6ba5f'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '9b814da3f97709c752be2cf212548ba3d63a004a1816267f96c443b7dd66f1e0'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
