cask 'tower-beta' do
  version '3.0.0-149,149-d345be9a'
  sha256 '83993cf8fa7ac41ca5dbb32e7a081fb9d0797c4c9fa255f3453a6b59c681929a'

  # amazonaws.com/apps/tower3-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma}/Tower-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/beta",
          checkpoint: '63f8e3cc8ab85fa946b910d065c43cfd8bfdec3d1d412c2d14a3a512a050e7eb'
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
