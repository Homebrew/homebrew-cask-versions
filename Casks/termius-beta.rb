cask 'termius-beta' do
  version '5.6.1'
  sha256 'bbab9dc4c8eac802763e7357d47592010060bc714b0af2300069bc01541dea02'

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
