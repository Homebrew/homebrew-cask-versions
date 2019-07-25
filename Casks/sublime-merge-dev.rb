cask 'sublime-merge-dev' do
  version '1115'
  sha256 '2713dc68c1c533873e39d8b17982f1f1a4a5fa06a734f24278c3a82c0bc69aed'

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
