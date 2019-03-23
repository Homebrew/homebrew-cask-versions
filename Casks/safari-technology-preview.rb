cask 'safari-technology-preview' do
  version '78,041-48448-20190319-3d1eddd6-14ef-4b4d-9a1d-e5462d07403c'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-48694-20190319-3be95cf1-f7e3-4673-b0ed-3da880f3f88b/SafariTechnologyPreview.dmg'
    sha256 '63deff4b7215be0816086d665d0f41d0e8c143dfb7c1ab5382dac8e2f5b6cb12'
  else
    url "https://secure-appldnld.apple.com/STP/#{version.after_comma}/SafariTechnologyPreview.dmg"
    sha256 '595b86d7d33d5cf1e233742472270bfe825c8de2f4b7c8789d9452ba30a32128'
  end

  appcast 'https://developer.apple.com/safari/technology-preview/release-notes/'
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
