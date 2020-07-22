cask 'iterm2-beta' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.4.0beta2'
  sha256 'b4b656714ca890e4f0f75dbe9b9b6e6838e815ba23110ce58450f5f2dfbea576'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/testing3.xml'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  conflicts_with cask: 'iterm2'
  depends_on macos: '>= :sierra'

  app 'iTerm.app'

  zap trash: [
               '~/Library/Application Support/iTerm',
               '~/Library/Application Support/iTerm2',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*',
               '~/Library/Caches/com.googlecode.iterm2',
               '~/Library/Preferences/com.googlecode.iterm2.plist',
               '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
             ]
end
