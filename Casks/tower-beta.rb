cask 'tower-beta' do
  version '3.0.0-145,145-6d4676e6'
  sha256 '790e0ad7a07da0b9fbaaad5cca29172b34dc383b2b318f73c4deb3f6511dec30'

  # amazonaws.com/apps/tower3-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma}/Tower-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/beta",
          checkpoint: '4a3b122bc27ac500f81e0772d7ffdfadbd56906ac5e56f1a2f275b95fb0e82b4'
  name 'Tower'
  homepage 'https://www.git-tower.com/public-beta-2018'

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
               '~/Library/Application Support/com.fournova.Tower*',
               '~/Library/Caches/com.fournova.Tower*',
               '~/Library/Preferences/com.fournova.Tower*.plist',
             ]
end
