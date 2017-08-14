cask 'iterm2-beta' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.1.beta.7'
  sha256 '98f7cbfbe3ca7babae137338522a5535622ef33c06d2363c81850128822b48d5'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/testing3.xml',
          checkpoint: '1f5f58e0134568646392e173eff1974cf0044c8b561a913e742516e84cc1c1fd'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'iTerm.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl',
                '~/Library/Application Support/iTerm',
                '~/Library/Application Support/iTerm2',
                '~/Library/Caches/com.googlecode.iterm2',
                '~/Library/Preferences/com.googlecode.iterm2.plist',
                '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
              ]
end
