cask 'tower-beta' do
  version '2.6.4-357,357-a5932bd4'
  sha256 'c969606ee68e4094785918aeefcd8c1c94b3e23934658675ccb36e5500d6078d'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: '79f26e99ed87cacb90a583c11092f9ae96de75604811ec21e0469bbba480fc55'
  name 'Tower'
  homepage 'https://www.git-tower.com/'

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
               '~/Library/Application Support/com.fournova.Tower2',
               '~/Library/Caches/com.fournova.Tower2',
               '~/Library/Preferences/com.fournova.Tower2.plist',
             ]
end
