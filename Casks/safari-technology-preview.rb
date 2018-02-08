cask 'safari-technology-preview' do
  version '49'

  if MacOS.version == :sierra
    sha256 '3b3e42412a3ba6328586b66600c05c7079f970206d0282cf903c1df7415deecd'
    url 'https://secure-appldnld.apple.com/STP/091-68519-2018-02-7-670EB77C-DB92-11E7-A17C-A4421C5E62D6/SafariTechnologyPreview.dmg'
  else
    sha256 '3dd26a10a8b1101449acb1376aafe93a8bc95d53794fcd4d6ea7a54ee44b15c9'
    url 'https://secure-appldnld.apple.com/STP/091-68516-2018-02-7-670EB77C-DB91-11E7-A17C-A4421C5E62D6/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  depends_on macos: '>= :sierra'
  auto_updates true

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
