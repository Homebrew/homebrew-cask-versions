cask 'safari-technology-preview' do
  version '55'

  if MacOS.version == :sierra
    sha256 'bc07b8f9da43a8ec019e4808dd98ac585b4088fa6bc77b5d67cb30d3e381373d'
    url 'https://secure-appldnld.apple.com/STP/091-81672-20180501-222E2B66-E7F2-410F-AA71-A27B03AB84F6/SafariTechnologyPreview.dmg'
  else
    sha256 '0e9580275e6435bbee15bd1ce5cb06869f54d2f9447038e723069ee680c489c8'
    url 'https://secure-appldnld.apple.com/STP/091-81099-20180501-222E2B66-E7F2-410F-AA71-A27B03AB84F6/SafariTechnologyPreview.dmg'
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
