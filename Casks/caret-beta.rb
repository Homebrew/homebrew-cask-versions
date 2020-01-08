cask 'caret-beta' do
  version '4.0.0-rc23'
  sha256 '87d6468f1e7c7ab17332c2d3bc91dd6d070572b9240cc4429e9ddf0f30e2a9de'

  # github.com/careteditor/releases-beta was verified as official when first introduced to the cask
  url "https://github.com/careteditor/releases-beta/releases/download/#{version}/caret-beta.dmg"
  appcast 'https://github.com/careteditor/releases-beta/releases.atom'
  name 'Caret Beta'
  homepage 'https://caret.io/'

  app 'Caret Beta.app'

  zap trash: [
               '~/Library/Application Support/Caret Beta',
               '~/Library/Preferences/io.caret.helper.plist',
               '~/Library/Preferences/io.caret.plist',
               '~/Library/Saved Application State/io.caret.savedState',
               '~/Library/Logs/Caret Beta',
             ]
end
