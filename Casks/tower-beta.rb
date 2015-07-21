cask :v1 => 'tower-beta' do
  version '2.3.0-290'
  sha256 '5afc0f512f198782070973f12f93f5ca600b18c97032a1a81ef4670f2e5a8c45'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/290-bfbb31e4/Tower-2-#{version}.zip"
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
