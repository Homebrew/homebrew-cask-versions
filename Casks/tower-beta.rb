cask 'tower-beta' do
  version '2.5.0-322,322-55d816d5'
  sha256 'd1ef7ba334572ea7fee0075a88a83905a6fd931cc6b792823fdb428e20456ed3'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: 'b9b9c63dc0a5153aaf4feaa89b523f6fda1e561868de1bf56f91ba5f27b404a1'
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
