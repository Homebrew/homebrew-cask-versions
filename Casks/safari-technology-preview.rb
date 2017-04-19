cask 'safari-technology-preview' do
  version '28'
  sha256 'b8d44b2cc21cf808536eae5465cef7559dd697e608ac24c921fa010696f39cca'

  url 'https://secure-appldnld.apple.com/STP/091-07942-20170419-0EB9C78E-244D-11E7-BAE9-DC6F28CDFC9D/SafariTechnologyPreview.dmg'
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
