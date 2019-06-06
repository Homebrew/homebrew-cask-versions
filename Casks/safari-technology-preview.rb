cask 'safari-technology-preview' do
  version '84,041-47713-20190604-3e6cfc84-a8c1-43ec-8c5c-5d5f5b9183c2'

  if MacOS.version <= :mojave
    url 'https://secure-appldnld.apple.com/STP/041-71285-20190604-6d0dcb17-07e5-40a0-b418-dba732cefe64/SafariTechnologyPreview.dmg'
    sha256 '4c427212a64c2de176c57e5f04e3eb7656c82bf19f440f68e32ed8b33bbb3c64'
  else
    url "https://secure-appldnld.apple.com/STP/#{version.after_comma}/SafariTechnologyPreview.dmg"
    sha256 '539f6df5a18122e91ff515446858ad310ba42b9057dc9385ee36e6ade2275587'
  end

  appcast 'https://developer.apple.com/safari/technology-preview/release-notes/'
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
