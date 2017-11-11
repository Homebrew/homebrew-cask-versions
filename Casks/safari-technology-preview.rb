cask 'safari-technology-preview' do
  version '43'

  if MacOS.version == :sierra
    sha256 '43defcd62bc6cd2319ee07dec341ebc7c70859ff2ca27f042b791115c25f324f'
    url 'https://secure-appldnld.apple.com/STP/091-40820-20171101-4CBE6F5C-BE45-11E7-A435-660C18FB103A/SafariTechnologyPreview.dmg'
  else
    sha256 '183f838e4acefd0dc286452507aa914edcb789a14efd6fb2ba07ecaff7fb7cab'
    url 'https://secure-appldnld.apple.com/STP/091-40846-20171101-4CBE9F68-BE45-11E7-9B81-650C18FB103A/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  depends_on macos: '>= :sierra'

  pkg 'Safari Technology Preview.pkg'

  uninstall delete: '/Applications/Safari Technology Preview.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apple.safaritechnologypreview.sfl*',
                '~/Library/Caches/com.apple.SafariTechnologyPreview',
                '~/Library/Saved Application State/com.apple.SafariTechnologyPreview.savedState',
                '~/Library/WebKit/com.apple.SafariTechnologyPreview',
              ],
      trash:  [
                '~/Library/Preferences/com.apple.SafariTechnologyPreview.plist',
                '~/Library/SafariTechnologyPreview',
                '~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.UserRequests.plist',
                '~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.WebFeedSubscriptions.plist',
                '~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview.plist',
              ]
end
