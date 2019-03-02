cask 'termius-beta' do
  version '4.2.0'
  sha256 'e62ec3621265e16c659340153cf6cc3b5368d00015178211132173516062e8d9'

  # s3.amazonaws.com/termius.desktop.autoupdate/mac was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/termius.desktop.autoupdate/mac-beta/Termius+Beta.dmg'
  appcast 'https://www.termius.com/mac-os'
  name 'Termius Beta'
  homepage 'https://www.termius.com/beta-program'

  app 'Termius Beta.app'

  zap trash: [
               '~/.termius',
               '~/Library/Application Support/Termius Beta',
               '~/Library/Saved Application State/com.termius-beta-dmg.mac.savedState',
               '/Library/Preferences/com.termius-beta-dmg.mac.plist',
               '~/Library/Logs/Termius Beta',
             ]
end
