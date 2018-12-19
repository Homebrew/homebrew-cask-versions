cask 'safari-technology-preview' do
  version '72'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-27890-20181218-184D1786-AA54-11E8-82D8-98865F2D1BD8/SafariTechnologyPreview.dmg'
    sha256 '1fe15322fd1b4a38a257bf5109c94e19c2b3890e3e37717af9f5e222da051658'
  else
    url 'https://secure-appldnld.apple.com/STP/041-27893-20181218-184D1786-AA54-11E8-82D8-98865F2D1BD8/SafariTechnologyPreview.dmg'
    sha256 'eefb0a81bf6fbcf1d38cd8ce0e86f9e3039cebe97645a8c136f2d2d1bf7ba459'
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
