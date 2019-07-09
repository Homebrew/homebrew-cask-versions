cask 'termius-beta' do
  version '4.9.1'
  sha256 'df958e3b600f3be9c6786723ec98020075f678ef6ea36a3cf8604f5efc288768'

  # s3.amazonaws.com/termius.desktop.autoupdate/mac was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/termius.desktop.autoupdate/mac-beta/Termius+Beta.dmg'
  name 'Termius Beta'
  homepage 'https://www.termius.com/beta-program'

  app 'Termius Beta.app'

  zap trash: [
               '~/.termius',
               '~/Library/Application Support/Termius Beta',
               '~/Library/Saved Application State/com.termius-beta.mac.savedState',
               '/Library/Preferences/com.termius-beta.mac.helper.plist',
               '/Library/Preferences/com.termius-beta.mac.plist',
               '~/Library/Logs/Termius Beta',
             ]
end
