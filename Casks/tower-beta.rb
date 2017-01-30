cask 'tower-beta' do
  version '2.6.0-346,346-421e07c0'
  sha256 '4d1fc9152c781f76b4d6c8846a728356acacc1c33e5c534f38cdb6ebbe6f0a75'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: '6904d7a8e7718508334418f6b5f3add8d8c2e56054eff41a38dbc554eb6fc250'
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
