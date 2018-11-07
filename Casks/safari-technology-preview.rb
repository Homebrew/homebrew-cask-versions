cask 'safari-technology-preview' do
  version '69'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-19752-20181107-184D1786-AA54-11E8-82D8-98865F2D1BD8/SafariTechnologyPreview.dmg'
    sha256 '50d5734e006490c76414d7dac45ef46b449a920196f739bb880625c7d37b3fc2'
  else
    url 'https://secure-appldnld.apple.com/STP/041-19755-20181107-184D1786-AA54-11E8-82D8-98865F2D1BD8/SafariTechnologyPreview.dmg'
    sha256 'fa7fb7c33217616d56edb2cfdb32db1b29dc4ce147338e5e5dc344eef8fe3def'
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
