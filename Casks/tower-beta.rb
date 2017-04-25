cask 'tower-beta' do
  version '2.6.2-353,353-e3840772'
  sha256 '69ebe1fdda18d644b83524b5e14068021d20309e9c8a8f75fdadc9c73cae4c63'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: 'eaff23e6d6be5cb3b3ec5a6075257833e95d176f249308efdacfc5a6958d5c67'
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
