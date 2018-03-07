cask 'safari-technology-preview' do
  version '51'

  if MacOS.version == :sierra
    sha256 '9d23917accf637809d5212121b251dcdc731dd36bffc82e69704e5c9dc66002e'
    url 'https://secure-appldnld.apple.com/STP/091-71429-20180306-568313D8-1D74-11E8-A64C-0BF6EA84401E/SafariTechnologyPreview.dmg'
  else
    sha256 'a7c01be6515a53aa51fffb6bf6389635dd0f58a3d02379f414630f1dce931f8f'
    url 'https://secure-appldnld.apple.com/STP/091-71427-20180306-568313D8-1D74-11E8-A64C-0BF6EA84401E/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  auto_updates true
  depends_on macos: '>= :sierra'

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
