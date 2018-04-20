cask 'safari-technology-preview' do
  version '54'

  if MacOS.version == :sierra
    sha256 '67128c63074a14b40259be9d02ead657d7aca2a7441b639c5522fedcff16dbad'
    url 'https://secure-appldnld.apple.com/STP/091-77721-20180418-1F70CB08-3131-11E8-9791-31052B2AA206/SafariTechnologyPreview.dmg'
  else
    sha256 '6552fbf8b3687a512d924ce44182142f6c794b662a00d164c7c381b0bd7c8ab5'
    url 'https://secure-appldnld.apple.com/STP/091-77728-20180418-1F70CB08-3131-11E8-9791-31052B2AA206/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  auto_updates true
  depends_on macos: '>= :sierra'

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
