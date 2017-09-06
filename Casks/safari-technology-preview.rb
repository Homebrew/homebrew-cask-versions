cask 'safari-technology-preview' do
  version '39'

  if MacOS.version == :sierra
    sha256 '6660e882cba73a27fdf229c770b86addd6749b7171bef0f39a6752b2ca181e34'
    url 'https://secure-appldnld.apple.com/STP/091-31523-20170906-3B5795DC-927A-11E7-86FA-1CEE0D4B7226/SafariTechnologyPreview.dmg'
  else
    sha256 '88f27a2205976a0fce2d28577dab6a8815fa6b703fe6b47324695ef6a4e6f33a'
    url 'https://secure-appldnld.apple.com/STP/091-31522-20170906-3B572BF6-927A-11E7-92FC-1DEE0D4B7226/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  depends_on macos: '>= :sierra'

  pkg 'Safari Technology Preview.pkg'

  uninstall delete: '/Applications/Safari Technology Preview.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apple.safaritechnologypreview.sfl',
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
