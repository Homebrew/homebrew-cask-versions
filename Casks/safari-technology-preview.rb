cask 'safari-technology-preview' do
  version '39a'

  if MacOS.version == :sierra
    sha256 '0aeb66fdf0f9c2598981280c6be3664e62d5df84f561d19e8fffaafde69f8e65'
    url 'https://secure-appldnld.apple.com/STP/091-32420-20170908-A966E59B-8E6D-4556-BF69-0088297B598D/SafariTechnologyPreview.dmg'
  else
    sha256 '704b459dd7f2582d6ce850e33158640031537d73dee92fc776f4c339b8a3bcbe'
    url 'https://secure-appldnld.apple.com/STP/091-32408-20170908-C20D7CC7-8E99-445B-907C-76FAF1C5AD47/SafariTechnologyPreview.dmg'
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
