cask 'tower-beta' do
  version '2.6.0-345,345-0be1070f'
  sha256 '47605a9804d92c60c30455dd9a25b845d13cb3ffdab03de88dd4215dcedb3370'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/#{version.after_comma}/Tower-2-#{version.before_comma}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/beta',
          checkpoint: 'fd480a4c5772693b4b6f6356ced981e991545356adc5c522870f73dc81b99b21'
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
