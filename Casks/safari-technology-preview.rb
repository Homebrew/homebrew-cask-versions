cask 'safari-technology-preview' do
  version '52'

  if MacOS.version == :sierra
    sha256 'e35a9488d9b8df605fcc59e73982b36c33cf8c87761741db7d7ecbbcfb175e92'
    url 'https://secure-appldnld.apple.com/STP/091-75180-20180321-568313D8-1D74-11E8-A64C-0BF6EA84401E/SafariTechnologyPreview.dmg'
  else
    sha256 '2b6faaacbc1867ae3c0650edfec36138ae2a9913b80ae93c2c19a894a2fb623b'
    url 'https://secure-appldnld.apple.com/STP/091-75179-20180321-568313D8-1D74-11E8-A64C-0BF6EA84401E/SafariTechnologyPreview.dmg'
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
