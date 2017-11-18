cask 'safari-technology-preview' do
  version '44'

  if MacOS.version == :sierra
    sha256 '022089442e81632d8ef559fca0a54f3337ba67f0f71fceb0671cc41815814ff1'
    url 'https://secure-appldnld.apple.com/STP/091-47356-20171115-0BCEE4F0-C97A-11E7-B266-80C0A61DC569/SafariTechnologyPreview.dmg'
  else
    sha256 '695dde837fb2268f61484370a447186c034b01863f86364c0a625509247c6afb'
    url 'https://secure-appldnld.apple.com/STP/091-47387-20171115-0BCEE496-C97A-11E7-B266-7FC0A61DC569/SafariTechnologyPreview.dmg'
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
