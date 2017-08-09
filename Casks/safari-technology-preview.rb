cask 'safari-technology-preview' do
  version '37'

  if MacOS.version == :sierra
    sha256 'b75291db1de8fb993cc27e5c56d635d783ca79e84b53fbc4702bcd096aae08a8'
    url 'https://secure-appldnld.apple.com/STP/091-25986-20170809-22DE6638-7C64-11E7-A281-8409810D09FD/SafariTechnologyPreview.dmg'
  else
    sha256 'f056f38c6f3f17ca094bed3f26d6b02e0fafe1af0b43631fc56105545ac8b939'
    url 'https://secure-appldnld.apple.com/STP/091-25984-20170809-22DE4626-7C64-11E7-AFB9-8509810D09FD/SafariTechnologyPreview.dmg'
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
