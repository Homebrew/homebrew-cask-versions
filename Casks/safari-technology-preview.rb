cask 'safari-technology-preview' do
  version :latest
  sha256 :no_check

  url 'https://secure-appldnld.apple.com/STP/SafariTechnologyPreview.dmg'
  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/technology-preview/'
  license :unknown

  pkg 'Safari Technology Preview for OS X El Capitan.pkg'

  uninstall delete: '/Applications/Safari Technology Preview.app'

  zap delete: [
                '~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apple.safaritechnologypreview.sfl',
                '~/Cookies/com.apple.SafariTechnologyPreview.binarycookies',
                '~/Library/Preferences/com.apple.SafariTechnologyPreview.plist',
                '~/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.UserRequests.plist',
                '~/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.WebFeedSubscriptions.plist',
                '~/SyncedPreferences/com.apple.SafariTechnologyPreview.plist',
              ]
end
