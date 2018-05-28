cask 'tower-beta' do
  version '3.0.0-148,148-85e6ba61'
  sha256 '851386b8d1e8f4d5a0864557e09c4c83b8ffc7e5c858fe5b608a3e4b7c2f72e8'

  # amazonaws.com/apps/tower3-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma}/Tower-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/beta",
          checkpoint: 'b1ba8b77208f78d9668b76396d8e06852d6ec43ba81c6bab7c678d87691c9f0c'
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
