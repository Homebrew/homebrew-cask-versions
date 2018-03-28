cask 'iterm2-beta' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.1.6beta5'
  sha256 'adbcdcd321ce7b98ddf39ade13323449603c8a5902e7a78091a55ceada0a0b3a'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/testing3.xml',
          checkpoint: 'd2f5dd8fba81f1e49d6ab6dfa2e9b6eb8ec82665cf2d0c7bfc88a195c68d5729'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'iTerm.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*',
               '~/Library/Application Support/iTerm',
               '~/Library/Application Support/iTerm2',
               '~/Library/Caches/com.googlecode.iterm2',
               '~/Library/Preferences/com.googlecode.iterm2.plist',
               '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
             ]
end
