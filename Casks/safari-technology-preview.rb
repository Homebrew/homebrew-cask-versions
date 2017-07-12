cask 'safari-technology-preview' do
  version '35'

  if MacOS.version == :sierra
    sha256 'd5575401f95701a559d4b1f5d303ac80d39afe8c9b49babcf9a9d53870ac1c16'
    url 'https://secure-appldnld.apple.com/STP/091-21440-20170712-79BB7D93-C6A2-4D14-B02B-3441EC740F31/SafariTechnologyPreview.dmg'
  else
    sha256 'fb991dda42b32f6ab8f6dbeffacc146b0c202667a3f045977c4e40a34d0a33b5'
    url 'https://secure-appldnld.apple.com/STP/091-21367-20170712-87A6E7D4-1008-4AA0-ADD2-1687B069F090/SafariTechnologyPreview.dmg'
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
