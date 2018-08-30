cask 'safari-technology-preview' do
  version '64'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-03052-201808029-2EA97708-9B37-11E8-A4CA-EFFF75E91B15/SafariTechnologyPreview.dmg'
    sha256 '5635870f1a2d989376a31ada3a8e35ac416dbccdddfb7935afce8e05f99f1ea9'
  else
    url 'https://secure-appldnld.apple.com/STP/041-03050-201808029-2EA97708-9B37-11E8-A4CA-EFFF75E91B15/SafariTechnologyPreview.dmg'
    sha256 'a8e8133eb9747b97f3aa9c190118cf1267a3decfb564ab2df9c4887ce03937a1'
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
