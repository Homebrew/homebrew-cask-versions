cask 'termius-beta' do
  version '5.0.6'
  sha256 '495e376118ffb6a5c27d4814f453aea2d564dade747c305ed291c857d7b1a1b3'

  # s3.amazonaws.com/termius.desktop.autoupdate/mac was verified as official when first introduced to the cask
  url 'https://www.termius.com/beta/download/mac/Termius+Beta.dmg'
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
