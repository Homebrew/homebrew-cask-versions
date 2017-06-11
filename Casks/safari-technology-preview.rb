cask 'safari-technology-preview' do
  version '32'

  if MacOS.version == :sierra
    sha256 'd728879a085817f8c87106bafbe30f2fa30c71b090daa26e5624fce5a373b431'
    url 'http://secure-appldnld.apple.com/STP/091-15727-20170607-1AFFE048-4A2F-11E7-B717-E0A12D6174CC/SafariTechnologyPreview.dmg'
  else
    sha256 '99cfe1aa255f83c8556dcb6f4dd3bc624b7268b2e56fbea5168fc5c43f9a3f63'
    url 'http://secure-appldnld.apple.com/STP/091-07971-20170607-1AFFE2D2-4A2F-11E7-B717-DFA12D6174CC/SafariTechnologyPreview.dmg'
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
