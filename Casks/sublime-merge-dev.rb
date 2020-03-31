cask 'sublime-merge-dev' do
  version '2004'
  sha256 '6aaa576cc8cfbfbe472e0b49a8847afbd4d18aaab9956857b5a0a0669c45a717'

  # download.sublimetext.com was verified as official when first introduced to the cask
  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip"
  appcast 'https://www.sublimemerge.com/updates/dev_update_check'
  name 'Sublime Merge'
  homepage 'https://www.sublimemerge.com/dev'

  auto_updates true
  conflicts_with cask: 'sublime-merge'

  app 'Sublime Merge.app'
  binary "#{appdir}/Sublime Merge.app/Contents/SharedSupport/bin/smerge"

  uninstall quit: 'com.sublimemerge'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimemerge.sfl*',
               '~/Library/Application Support/Sublime Merge',
               '~/Library/Caches/com.sublimemerge/',
               '~/Library/Preferences/com.sublimemerge.plist',
               '~/Library/Saved Application State/com.sublimemerge.savedState',
             ]
end
