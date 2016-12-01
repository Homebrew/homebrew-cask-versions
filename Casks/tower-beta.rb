cask 'tower-beta' do
  version '2.6.0-338,338-e2267245'
  sha256 '572d8a95cd0c441bb5229b553a7a02c9c8439b33e4f7d7249f5a84674caa2c19'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: 'b18d45c2d02d27dc9db9db034e1814d5c1d6237910d998b15f89f3c27b99da49'
  name 'Tower'
  homepage 'https://www.git-tower.com/'

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
