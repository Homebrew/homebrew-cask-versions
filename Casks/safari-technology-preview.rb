cask 'safari-technology-preview' do
  version '46'

  if MacOS.version == :sierra
    sha256 '51c8c9ccf1c4060770a4b580e5c53d06a3afd89300e6707cfc1fdfa1fe332d33'
    url 'https://secure-appldnld.apple.com/STP/091-56401-20171220-165D5556-E4E0-11E7-BAF0-D5AB2772752F/SafariTechnologyPreview.dmg'
  else
    sha256 '824bff2c22f9c8827c536684e8b204504e73fcd2f8af4fbfb99df8102d925a5a'
    url 'https://secure-appldnld.apple.com/STP/091-56396-20171220-165D5240-E4E0-11E7-BC97-BB5AB072E13B/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

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
