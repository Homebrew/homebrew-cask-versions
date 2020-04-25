cask 'termius-beta' do
  version '5.10.0'
  sha256 '7dae81d2ea244a55f7a629cb77a5180d6d7c60063046a0081f6b97c9335334f4'

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
