cask 'safari-technology-preview' do
  version '40'

  if MacOS.version == :sierra
    sha256 'cb6927051832567edd0fe28cf93d81ef2d8e093fc1349208c2810a927313095b'
    url 'https://secure-appldnld.apple.com/STP/091-33444-20170919-603056FA-9D74-11E7-929D-F7CEFCD6B433/SafariTechnologyPreview.dmg'
  else
    sha256 '51da36275941f026b236af781831881fe717a9ae1dd3c48814b0fe844cfc401f'
    url 'https://secure-appldnld.apple.com/STP/091-33466-20170919-60302914-9D74-11E7-8A5A-F6CEFCD6B433/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  depends_on macos: '>= :sierra'

  pkg 'Safari Technology Preview.pkg'

  uninstall delete: '/Applications/Safari Technology Preview.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apple.safaritechnologypreview.sfl',
                '~/Library/Caches/com.apple.SafariTechnologyPreview',
                '~/Library/Saved Application State/com.apple.SafariTechnologyPreview.savedState',
                '~/Library/WebKit/com.apple.SafariTechnologyPreview',
              ],
      trash:  [
                '~/Library/Preferences/com.apple.SafariTechnologyPreview.plist',
                '~/Library/SafariTechnologyPreview',
                '~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.UserRequests.plist',
                '~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.WebFeedSubscriptions.plist',
                '~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview.plist',
              ]
end
