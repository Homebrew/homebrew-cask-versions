cask 'safari-technology-preview' do
  version '50'

  if MacOS.version == :sierra
    sha256 '26531536867de15e86605eae5561378a578c7844a6f417a01a0a5e23788b7668'
    url 'https://secure-appldnld.apple.com/STP/091-68522-20180220-16E14EBA-15EB-11E8-9B12-3B4DC5C276A0/SafariTechnologyPreview.dmg'
  else
    sha256 '30b8777d1eda4fec8ecd7927d29e8f3daf277c437e9e85a82cf939955faaed49'
    url 'https://secure-appldnld.apple.com/STP/091-68523-20180220-16E16C74-15EB-11E8-A84A-3A4DC5C276A0/SafariTechnologyPreview.dmg'
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
