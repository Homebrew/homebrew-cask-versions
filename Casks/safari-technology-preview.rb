cask 'safari-technology-preview' do
  version '53'

  if MacOS.version == :sierra
    sha256 '138a23187f3b32c0185dc94c908a8439ea6bb426e666046ec81bc21066e26504'
    url 'https://secure-appldnld.apple.com/STP/091-77046-20180404-01B460F0-827F-4BBF-8F35-E0876FDB41D2/SafariTechnologyPreview.dmg'
  else
    sha256 'b6e511790e9f072e78d60c3bf7f0ddc20dfa5ad7c0597d003d36fa14df0222ae'
    url 'https://secure-appldnld.apple.com/STP/091-77044-20180404-FB4FBD2C-0D13-4FC3-A340-ED73FB81CC73/SafariTechnologyPreview.dmg'
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
