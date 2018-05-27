cask 'iterm2-beta' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.2.0beta2'
  sha256 '10618e4f5a04016b741f2fb3479755c33bbbd795eaa87a93bc4a5438a0a5a2e9'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/testing3.xml',
          checkpoint: '1825f6659626f03f831119fdb5d84a81b6fd328f0594a9658ccb85b0b3ab7e38'
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
