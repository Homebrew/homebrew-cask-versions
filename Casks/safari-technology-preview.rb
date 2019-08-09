cask 'safari-technology-preview' do
  version '89,041-96201-20190806-0fd0ee8f-c976-47c6-bb96-afc3fee2e4f0'

  if MacOS.version <= :mojave
    url 'https://secure-appldnld.apple.com/STP/041-96198-20190806-e90a9856-9ea6-443d-ac67-ce4eae1a967a/SafariTechnologyPreview.dmg'
    sha256 '364a0719c8c549caa2277259a20009a0f385fefeb8c7a4679c5daf8126713d7f'
  else
    url "https://secure-appldnld.apple.com/STP/#{version.after_comma}/SafariTechnologyPreview.dmg"
    sha256 'd3bc34a59321f75674ac512d84cfc59d3959c3d15f633776595cd541a4cc5536'
  end

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
