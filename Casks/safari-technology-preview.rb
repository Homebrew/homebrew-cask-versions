cask 'safari-technology-preview' do
  version '75'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-35330-20190206-EEDD52AF-8A6B-4DE6-9385-F4A182A7C224/SafariTechnologyPreview.dmg'
    sha256 '92fc0531e7ff98418de5a460bd01bdbd340945bee53195d20e88a20718b7ad45'
  else
    url 'https://secure-appldnld.apple.com/STP/041-34447-20190206-EEDD52AF-8A6B-4DE6-9385-F4A182A7C224/SafariTechnologyPreview.dmg'
    sha256 'eb64726bfdf1fb9b086dc9303a19c3af3c6a75b6ec138c404a946c7e70350e57'
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
