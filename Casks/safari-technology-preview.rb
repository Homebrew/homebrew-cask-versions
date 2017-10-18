cask 'safari-technology-preview' do
  version '42'

  if MacOS.version == :sierra
    sha256 '924c5a89103004cc448ed2c6d0993bc0ac907bf8e9243541c777c70aa796de38'
    url 'https://secure-appldnld.apple.com/STP/091-37261-20171018-ED71F147-456B-4BCF-BC89-8B4FBA12388F/SafariTechnologyPreview.dmg'
  else
    sha256 'cbb843731600ce4e630351c9c14fd2703b6333d288503b2e2b02697ed99cf834'
    url 'https://secure-appldnld.apple.com/STP/091-37943-20171018-F3F58EB9-53A4-446A-BF0C-C225D2AF8C2D/SafariTechnologyPreview.dmg'
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
