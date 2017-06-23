cask 'iterm2-beta' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.1.beta.5'
  sha256 '9b16a793b9f7001dfd190bb3318f79622b5bb590f3d423ea4cd5d17256df92ce'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/testing3.xml',
          checkpoint: '8a198b466129d5221834404f8553a6818801415de19e1bfedb34bcba94014824'
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
