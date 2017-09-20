cask 'iterm2-beta' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.1.2.beta.1'
  sha256 'daadf704120569e87f76139ca4e7d292c57a0fe3285557bbd188c1a2c467b28d'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/testing3.xml',
          checkpoint: '9cc29dd3bc6a20c8116e60617b285046d7e44e9ce4c959bf9fd12eaaf23483c3'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'iTerm.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl',
                '~/Library/Caches/com.googlecode.iterm2',
                '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
              ],
      trash:  [
                '~/Library/Application Support/iTerm',
                '~/Library/Application Support/iTerm2',
                '~/Library/Preferences/com.googlecode.iterm2.plist',
              ]
end
