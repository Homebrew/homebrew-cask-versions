cask 'safari-technology-preview' do
  version '47'

  if MacOS.version == :sierra
    sha256 '29fb37dc2575b9b8312d61e939a238f1021f234749ab7c512dff0e282481daf1'
    url 'https://secure-appldnld.apple.com/STP/091-59634-20180110-165D5240-E4E0-11E7-BC97-BB5AB072E13B/SafariTechnologyPreview.dmg'
  else
    sha256 'fece2af8513352a4c5701a59e836fc127a0860473aadc8beb1f312d906b055f1'
    url 'https://secure-appldnld.apple.com/STP/091-59528-20180110-165D5556-E4E0-11E7-BAF0-D5AB2772752F/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

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
