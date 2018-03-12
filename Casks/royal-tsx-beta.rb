cask 'royal-tsx-beta' do
  version '3.2.8.4'
  sha256 '64bb5315ec8d7f2f0f4defc7dacb783e86a74967b5d8e58963f6e85e85a7a8c6'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '6c4def58b59ba3acefbea6c7f7c27e77d04cd1d0b2935a08d5039906f9f38304'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
