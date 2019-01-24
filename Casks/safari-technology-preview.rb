cask 'safari-technology-preview' do
  version '74'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-31560-20190123-7435CBD6-1B8A-11E9-AB27-697A60A41503/SafariTechnologyPreview.dmg'
    sha256 '5ac7200a2c3cdb478901ff4c70f3330d6f922254c455e366b3753e27599eccb1'
  else
    url 'https://secure-appldnld.apple.com/STP/041-31562-20190123-7435CBD6-1B8A-11E9-AB27-697A60A41503/SafariTechnologyPreview.dmg'
    sha256 '79aa714cc057b0ebe4ffcb4304f226c9d3ea9affe9b553c42b04b5ed3bffe858'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  pkg 'Safari Technology Preview.pkg'

  uninstall delete: '/Applications/Safari Technology Preview.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apple.safaritechnologypreview.sfl*',
               '~/Library/Caches/com.apple.SafariTechnologyPreview',
               '~/Library/Preferences/com.apple.SafariTechnologyPreview.plist',
               '~/Library/SafariTechnologyPreview',
               '~/Library/Saved Application State/com.apple.SafariTechnologyPreview.savedState',
               '~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.UserRequests.plist',
               '~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.WebFeedSubscriptions.plist',
               '~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview.plist',
               '~/Library/WebKit/com.apple.SafariTechnologyPreview',
             ]
end
