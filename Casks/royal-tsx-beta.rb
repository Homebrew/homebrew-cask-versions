cask 'royal-tsx-beta' do
  version '3.2.1.5'
  sha256 'dce1ea72f925f01c44577d808c09bd1aefbd031a0f4c92a3498fb8b5c07b6947'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '5cc40b0c139fcc831139645897b1d8d0a3b75fd79d9438dfb5d85db577f5eb70'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
