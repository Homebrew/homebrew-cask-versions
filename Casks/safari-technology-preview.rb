cask 'safari-technology-preview' do
  version '67'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-09757-20181009-01EC2FD2-85EB-11E8-AB5B-AEA972136C40/SafariTechnologyPreview.dmg'
    sha256 '884ab490c4acedd64908b906fb3163010b6ad79ca08d300c06112d90c6cbe06b'
  else
    url 'https://secure-appldnld.apple.com/STP/041-11185-20181009-01EC2FD2-85EB-11E8-AB5B-AEA972136C40/SafariTechnologyPreview.dmg'
    sha256 '4bda69a3599e861648f8f88eb88e2098a83fd50e7d811e282fab3ed320372a6a'
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
