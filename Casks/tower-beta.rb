cask :v1 => 'tower-beta' do
  version '2.2.3-285'
  sha256 'c9d79a6a8bfc298f38a2d7dbe724d71468f86c1de09fabd1d9da754fd8a40f74'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/285-e057eb4f/Tower-2-#{version}.zip"
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
