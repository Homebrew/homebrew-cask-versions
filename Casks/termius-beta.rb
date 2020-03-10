cask 'termius-beta' do
  version '5.5.3'
  sha256 '47655f0afe26b0ae4cffbc2900198272d5c21dc467225d604d46488a58ceb08b'

  # s3.amazonaws.com/termius.desktop.autoupdate/mac was verified as official when first introduced to the cask
  url 'https://www.termius.com/beta/download/mac/Termius+Beta.dmg'
  name 'Termius Beta'
  homepage 'https://www.termius.com/beta-program'
  
  auto_updates true
  
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
