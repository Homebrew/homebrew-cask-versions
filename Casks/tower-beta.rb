cask 'tower-beta' do
  version '2.6.3-355,355-a7440d07'
  sha256 '2c1207bb586ec22a930aee08056edb0c0304e6138e2d0c46733536f6f8599e86'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: '313e45dc96cae042456c0b9fad047f3dd8d51a9b8e746cdfce50bf08386e6551'
  name 'Tower'
  homepage 'https://www.git-tower.com/'

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap delete: [
                '~/Library/Application Support/com.fournova.Tower2',
                '~/Library/Caches/com.fournova.Tower2',
                '~/Library/Preferences/com.fournova.Tower2.plist',
              ]
end
