cask 'safari-technology-preview' do
  if MacOS.version <= :mojave
    version '93,061-25020-20191001-a0512a8b-e239-4770-a65a-abb385b725b8'
    sha256 '2f33c86eb89e1dde7faa310155b45424bb8e4ead29f75219ab538c43923e9882'
  else
    version '93,061-24849-20191001-f34f8e1e-b3a8-43ab-8f3b-46af122df56c'
    sha256 '2c9b39785a60e1ae5afa376da2e5c1770fd930461ba396da54edabf4ea9e99e0'
  end

  url "https://secure-appldnld.apple.com/STP/#{version.after_comma}/SafariTechnologyPreview.dmg"
  appcast 'https://developer.apple.com/safari/download/'
  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  auto_updates true
  depends_on macos: '>= :mojave'

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
