cask 'safari-technology-preview' do
  version '56'

  if MacOS.version == :sierra
    sha256 '94b25b390da20afae067a699220f47727c72a9b4348b34e69214330fcdf6b8c9'
    url 'https://secure-appldnld.apple.com/STP/091-84914-20180516-222E2B66-E7F2-410F-AA71-A27B03AB84F6/SafariTechnologyPreview.dmg'
  else
    sha256 '675e224be01f59dc4f35aaf0d4838e8b2922544af4d767791885d5fb06936e7b'
    url 'https://secure-appldnld.apple.com/STP/091-82859-20180516-222E2B66-E7F2-410F-AA71-A27B03AB84F6/SafariTechnologyPreview.dmg'
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
