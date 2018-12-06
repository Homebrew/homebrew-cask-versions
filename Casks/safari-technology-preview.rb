cask 'safari-technology-preview' do
  version '71'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-25903-20181205-73BA2D1C-E44B-11E8-BBCA-D37951E18787/SafariTechnologyPreview.dmg'
    sha256 'bd24eb188f68d591ea39a5cffdaf4ff55794d5fdc4eb18a42c3c7163a34310f8'
  else
    url 'https://secure-appldnld.apple.com/STP/041-25905-20181205-73BA2D1C-E44B-11E8-BBCA-D37951E18787/SafariTechnologyPreview.dmg'
    sha256 '0237a42a7591df239a5081fe6709583d70e3ec1f0f52e9023f648c6f2db677f7'
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
