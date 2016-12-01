cask 'royal-tsx-beta' do
  version '3.0.0.46'
  sha256 'b13923fb5ab2c1d48e0f34bd08f95c37013f175258559b866105d0537ef4f744'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'af7a372486f9b8c66d16aab370e8645c904df34f89faf557542678a457ddae6c'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
