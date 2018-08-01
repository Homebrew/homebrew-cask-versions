cask 'safari-technology-preview' do
  version '62'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/091-95878-20180801-01EC2FD2-85EB-11E8-AB5B-AEA972136C40/SafariTechnologyPreview.dmg'
    sha256 '01f8300d2fc6e7eb99206d25720ef275aa5c5317d1a02d9dbe636a526387bd80'
  else
    url 'https://secure-appldnld.apple.com/STP/091-96008-20180801-01EC2FD2-85EB-11E8-AB5B-AEA972136C42/SafariTechnologyPreview.dmg'
    sha256 '88d8e755795eddc5fc901ffc1d2e6ea9dec3663325340307b086bf138e169c57'
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
