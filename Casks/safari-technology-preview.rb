cask 'safari-technology-preview' do
  if MacOS.version <= :el_capitan
    version :latest
    sha256 'e19500bd87d7be249ebace9796b131ab62f39d1a10b5113713735f847e5f3e42'
    url 'http://appldnld.apple.com/STP/031-81900-20160926-E7046BDA-8434-11E6-83C5-ADC333D2D062/SafariTechnologyPreview.dmg'
  else
    version '26'
    sha256 '5d612dcca7da026bcbd8deb3aee6fdbf3de0b05a42d47e8d09c935166d306214'
    url 'https://secure-appldnld.apple.com/STP/091-01778-20170322-AB2EC7B2-0DBF-11E7-93C5-AB1400A0ED6C/SafariTechnologyPreview.dmg'
  end
  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

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
