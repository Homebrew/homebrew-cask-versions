cask 'safari-technology-preview' do
  version '61'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/091-95261-201807018-01EC2FD2-85EB-11E8-AB5B-AEA972136C40/SafariTechnologyPreview.dmg'
    sha256 '28cd2ea286a32beb12e36a4900584da0d60bb9b698f6e83ba536476150272622'
  else
    url 'https://secure-appldnld.apple.com/STP/091-95465-201807018-01EC2FD2-85EB-11E8-AB5B-AEA972136C40/SafariTechnologyPreview.dmg'
    sha256 'e2d2260dfd588870d609db8dd89598e15ea6b18375a7608950a2c72207fc508f'
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
