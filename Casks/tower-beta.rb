cask 'tower-beta' do
  version '3.0.0-151,151-c0ce1e07'
  sha256 'f3f9b7a0e4b3dd2f68920277f285a03ccba9f23ecbe76b5c7173a8866f146caa'

  # amazonaws.com/apps/tower3-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma}/Tower-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/beta"
  name 'Tower'
  homepage 'https://www.git-tower.com/public-beta-2018'

  auto_updates true

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
               '~/Library/Application Support/com.fournova.Tower*',
               '~/Library/Caches/com.fournova.Tower*',
               '~/Library/Preferences/com.fournova.Tower*.plist',
             ]
end
