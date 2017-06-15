cask 'safari-technology-preview' do
  version '33'

  if MacOS.version == :sierra
    sha256 'a259582c3fd9f78acac06e493dd45ffe1bbecc11125b93e577c9ab6940b61976'
    url 'https://secure-appldnld.apple.com/STP/091-17755-20170613-810B2272-A1AF-4825-8E43-ADF9E09D0B20/SafariTechnologyPreview.dmg'
  else
    sha256 '76f6f8b005c2c5894b8c0b50c6f3fcecc741c06edd60aee636dae9b238605380'
    url 'https://secure-appldnld.apple.com/STP/091-17753-20170613-188386D4-2B01-4E97-A103-7D87C430CD3D/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  depends_on macos: '>= :sierra'

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
