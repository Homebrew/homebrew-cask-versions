cask 'iterm2-nightly' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3_3_20190210'
  sha256 'b6d0efbbcd52958c7966574b688e1053424510a08252eaa1d811d7d2484df852'

  url 'https://www.iterm2.com/nightly/latest'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  depends_on macos: '>= :yosemite'

  app 'iTerm.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*',
               '~/Library/Caches/com.googlecode.iterm2',
               '~/Library/Application Support/iTerm',
               '~/Library/Application Support/iTerm2',
               '~/Library/Preferences/com.googlecode.iterm2.plist',
               '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
             ]
end
