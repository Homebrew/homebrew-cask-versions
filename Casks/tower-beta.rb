cask 'tower-beta' do
  version '3.0.0-147,147-56e90fa0'
  sha256 '32df0b12ae7d8f9336147acfb361565f5929e3e4dc1da2ac6db318f08f4819c2'

  # amazonaws.com/apps/tower3-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma}/Tower-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/beta",
          checkpoint: '735540e0e39f40256ed8ccaaf7eac596f4f9eca9b5c4715f41396f826c35ca69'
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
