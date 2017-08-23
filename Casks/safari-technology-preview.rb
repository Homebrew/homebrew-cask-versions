cask 'safari-technology-preview' do
  version '38'

  if MacOS.version == :sierra
    sha256 '47a4b530f330ddc62d3bbf744fbebf0c1871d734a11256c0dae70a3c3cdc5d80'
    url 'https://secure-appldnld.apple.com/STP/091-30032-20170822-5E2F4F8C-8780-11E7-A38E-12ABA0123000/SafariTechnologyPreview.dmg'
  else
    sha256 '31735759e36f4ad7865bff168df8a844beabb94a878ac207de9d06d1292a87c2'
    url 'https://secure-appldnld.apple.com/STP/091-30035-20170822-5E2F8C72-8780-11E7-943E-13ABA0123000/SafariTechnologyPreview.dmg'
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
