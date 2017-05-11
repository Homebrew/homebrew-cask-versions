cask 'royal-tsx-beta' do
  version '3.1.4.9'
  sha256 '2071f97817c19a9baa8757a22879a8ee96bf014c98f88077c8185f2865afa2ff'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '3a5abe710c93fd8ac7b87a482882032cc48eb740bf25209297bd7162a9e0fb05'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
