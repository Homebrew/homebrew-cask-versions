cask 'safari-technology-preview' do
  version '34'

  if MacOS.version == :sierra
    sha256 'dbf1799463a37608446fa3ccad4b05cc61b95e4b278f47b5008cb317b9d30f40'
    url 'https://secure-appldnld.apple.com/STP/091-17778-20170628-3F7E556A-5B70-11E7-A994-CCEF7F942F55/SafariTechnologyPreview.dmg'
  else
    sha256 '6b017d2183e331d6ab7b8a9de540347eb18aea19fe5cb0ef8af2e69f1d9ae0c0'
    url 'https://secure-appldnld.apple.com/STP/091-17776-20170628-3F7E5524-5B70-11E7-A994-CBEF7F942F55/SafariTechnologyPreview.dmg'
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
