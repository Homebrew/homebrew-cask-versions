cask 'safari-technology-preview' do
  version '58'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/091-87399-20180606-FBA72DC9-E8A3-446A-A4E2-B32DBB7175AB/SafariTechnologyPreview.dmg'
    sha256 '0f85e2b97802854034e22c7f133987dcb47e811bf6bff563c31e6753a5336eb6'
  else
    url 'https://secure-appldnld.apple.com/STP/091-81948-20180606-A6156C55-3298-4E25-9905-10135203B756/SafariTechnologyPreview.dmg'
    sha256 '5ca5557516b11dfd7b34dd442c9f97f5ac3aca7eb77dbc75d89ac839c9b3fb3f'
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
