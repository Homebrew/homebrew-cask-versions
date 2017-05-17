cask 'safari-technology-preview' do
  version '30'
  sha256 '11c5d782f72691a3dfb2d0b328879ec91c2d3a213587ba11ae31488a3ce10476'

  url 'https://secure-appldnld.apple.com/STP/091-12487-20170517-F2084E30-3A6D-11E7-B9EB-EBFD26FD6CB5/SafariTechnologyPreview.dmg'
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
