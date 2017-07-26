cask 'safari-technology-preview' do
  version '36'

  if MacOS.version == :sierra
    sha256 'cc3aae7d80ede050c50addc73cbbc7bab8a4a95787fb8bf29c73aa801f1d771d'
    url 'https://secure-appldnld.apple.com/STP/091-23520-20170726-AC590232-714D-11E7-958D-19D4484DD6D5/SafariTechnologyPreview.dmg'
  else
    sha256 '9db2bb7740614d37f27c828f8bbd818e07d49de33fe79cbc4c0a68b96c7945b5'
    url 'https://secure-appldnld.apple.com/STP/091-23518-20170726-AC590278-714D-11E7-958D-1AD4484DD6D5/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  depends_on macos: '>= :sierra'

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
