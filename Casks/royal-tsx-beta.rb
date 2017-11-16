cask 'royal-tsx-beta' do
  version '3.2.4.1000'
  sha256 '1acd66150c364f9cb190ab3edeb15e1ec5890548f0d5a9a5de36a81e8bbfae57'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '8e5052b7c3fe4da0cd07fa9f1b11e920977590227018d745ec5aa861879d932d'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
