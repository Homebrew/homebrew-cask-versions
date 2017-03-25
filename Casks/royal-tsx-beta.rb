cask 'royal-tsx-beta' do
  version '3.1.3.1000'
  sha256 '2dc27df75186d9d9ba7757a74dafe312594601f98d4f8b24aa65227ab6ee9fa4'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '207f2d2792beaa3d25b6008cc1812d962bd3d73c09befebfeef5dafb86fd0cb8'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
