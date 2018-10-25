cask 'safari-technology-preview' do
  version '68'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-16281-20181024-28C3C3FC-CCCE-11E8-A0FD-D2D18121E9C4/SafariTechnologyPreview.dmg'
    sha256 'ed2dd3505a1ef0587fb67f3a9f3c270c231a2da5fe54340c5fdea462bb455d04'
  else
    url 'https://secure-appldnld.apple.com/STP/041-16284-20181024-28C3C3FC-CCCE-11E8-A0FD-D2D18121E9C4/SafariTechnologyPreview.dmg'
    sha256 'b4a5dfe1168a2c1ed1182283094661709365b7222ad8a203b3334620b811ded0'
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
