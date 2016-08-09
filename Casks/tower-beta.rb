cask 'tower-beta' do
  version '2.5.0-319,319-66308252'
  sha256 'cb720fc85df249b73bf2a5dd9ed8093f3c967d3ec99581cb31af37eba7a63720'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: '0d6cc53d8ea48a6cab7fccfff81f3f4371812cc1a0cb669979c88bb12169a10f'
  name 'Tower'
  homepage 'https://www.git-tower.com/'
  license :commercial

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
