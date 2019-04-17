cask 'sublime-merge-dev' do
  version '1112'
  sha256 'f27db63c2b8509eb8267d16476994e327ed242bc5cabc6e5935b8c8010f2ef44'

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
