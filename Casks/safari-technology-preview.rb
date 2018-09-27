cask 'safari-technology-preview' do
  version '66'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-08190-20180925-61411BD2-9CD4-11E8-9FDB-19F091474B07/SafariTechnologyPreview.dmg'
    sha256 '502c28dff03d407304996cdaa6d383dcfda63750fa99729c3a22bbcb46bd4611'
  else
    url 'https://secure-appldnld.apple.com/STP/041-08724-20180925-61411BD2-9CD4-11E8-9FDB-19F091474B07/SafariTechnologyPreview.dmg'
    sha256 '3656402b9eb61e33b27be41a73d018c26e70678e4b9de2fdb47911403d66b987'
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
