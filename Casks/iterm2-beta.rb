cask 'iterm2-beta' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.1.beta.9'
  sha256 'ee8e6425a62f7875cde887002c688182d28636d1cc837dbde0d3819600335c55'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/testing3.xml',
          checkpoint: '7009a0e934fcc1f998e77810c1aa88f856c11c6063229e0c0dae71a0e4cd805e'
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
