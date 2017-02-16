cask 'safari-technology-preview' do
  version :latest
  sha256 :no_check

  if MacOS.version <= :el_capitan
    url 'http://appldnld.apple.com/STP/031-81900-20160926-E7046BDA-8434-11E6-83C5-ADC333D2D062/SafariTechnologyPreview.dmg'
  else
    url 'https://secure-appldnld.apple.com/STP/031-98194-20170208-718B1142-D9F2-11E6-9947-B4F4B59B175E/SafariTechnologyPreview.dmg'
  end
  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  pkg 'Safari Technology Preview.pkg'

  uninstall delete: '/Applications/Safari Technology Preview.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apple.safaritechnologypreview.sfl',
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
