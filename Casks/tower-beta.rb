cask 'tower-beta' do
  version '2.6.2-352,352-98de2678'
  sha256 '409d0d6b581353d4f76e7b9836344da3cc46c8b39f2ae68763ec95afcf1e98da'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: '42b5f362e7320734ac841354fecb92c47ee79d5b5c03a28797407bb27ff63426'
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
