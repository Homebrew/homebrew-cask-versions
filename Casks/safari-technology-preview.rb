cask 'safari-technology-preview' do
  version '60'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/091-93967-20180703-202A0C40-70FA-11E8-B6CB-0C6212F91F3C/SafariTechnologyPreview.dmg'
    sha256 'e63ce6bd9863f93b3f618ba6aef4e1674700115b0a0bd67c06fa2e0d9e657aa0'
  else
    url 'https://secure-appldnld.apple.com/STP/091-93969-20180703-202A0C40-70FA-11E8-B6CB-0C6212F91F3C/SafariTechnologyPreview.dmg'
    sha256 '2b403cf9d43ea5815b9cf677c0d21b2fbe7814522d9b21c6d35f75802d15c1bf'
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
