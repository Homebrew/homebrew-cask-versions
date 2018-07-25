cask 'tower-beta' do
  version '3.1.0-157,157-5d201a39'
  sha256 '118810f0ad232a4f58ab43c79cfa91c9f978346d5940a31fa6306b81d3ed8c1a'

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
