cask :v1 => 'tower-beta' do
  version '2.2.2-281'
  sha256 '83fdbb887c394ed0f76bf91c66972d28bc6d36f144c21dfd582ccb09d5e19864'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/281-3f2b7672/Tower-2-#{version}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta'
  name 'Tower'
  homepage 'http://www.git-tower.com/'
  license :commercial

  app 'Tower.app'
  binary 'Tower.app/Contents/MacOS/gittower'

  zap :delete => [
                  '~/Library/Application Support/com.fournova.Tower2',
                  '~/Library/Caches/com.fournova.Tower2',
                  '~/Library/Preferences/com.fournova.Tower2.plist',
                 ]

  caveats do
    files_in_usr_local
  end
end
