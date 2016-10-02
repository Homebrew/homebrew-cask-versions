cask 'safari-technology-preview' do
  version :latest
  sha256 :no_check

  if MacOS.version <= :el_capitan
    url 'http://appldnld.apple.com/STP/031-81900-20160926-E7046BDA-8434-11E6-83C5-ADC333D2D062/SafariTechnologyPreview.dmg'
  else MacOS.version >= :sierra
    url 'http://appldnld.apple.com/STP/031-81899-20160926-E7046BC6-8434-11E6-83C5-ACC333D2D062/SafariTechnologyPreview.dmg'
  end
  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'
  license :gratis

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
