cask 'tower-beta' do
  version '2.5.0-323,323-7f74ce35'
  sha256 '1a774f55edf144ee0cddb6b1b650cde2777a5b560539021157d86a9b731b584d'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: 'cd1529de4d56eb1cd99033d770c4d584441b4a816c97869e288a00275a40d5b7'
  name 'Tower'
  homepage 'https://www.git-tower.com/'
  license :commercial

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap delete: [
                '~/Library/Application Support/com.fournova.Tower2',
                '~/Library/Caches/com.fournova.Tower2',
                '~/Library/Preferences/com.fournova.Tower2.plist',
              ]

  caveats do
    files_in_usr_local
  end
end
