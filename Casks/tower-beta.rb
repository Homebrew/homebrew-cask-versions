cask 'tower-beta' do
  version '2.6.2-350,350-b7d5b8fb'
  sha256 'a83de3400c8b333002d1e6b7d5bc3a767f1205061af585c5072da974e245d833'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: 'e9e290f18100da28b50463bcc2d3a5045edfcbcdd0ab2d1a1974c5f5a1517337'
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
