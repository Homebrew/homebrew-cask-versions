cask 'safari-technology-preview' do
  version '45'

  if MacOS.version == :sierra
    sha256 'b29e9eac61ce23f1a356ba29c705bb2afd7f8f369e8a7577f25d3686c2cd69eb'
    url 'https://secure-appldnld.apple.com/STP/091-51912-20171206-61A4021C-DA2C-11E7-8DD1-138B61E0607F/SafariTechnologyPreview.dmg'
  else
    sha256 'a65d93692516acd7ca17ec3f77d8d2b71cfb7ba345545960615a68a1ae2cd5ab'
    url 'https://secure-appldnld.apple.com/STP/091-51904-20171206-61A3E30E-DA2C-11E7-B579-128B61E0607F/SafariTechnologyPreview.dmg'
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
