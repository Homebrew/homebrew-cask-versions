cask 'safari-technology-preview' do
  version '63'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/091-99998-20180815-01EC2FD2-85EB-11E8-AB5B-AEA972136C40/SafariTechnologyPreview.dmg'
    sha256 'a3535919a5af214ce76bc46511a649edd1873a215d77fe5cdac5063302ecdf6b'
  else
    url 'https://secure-appldnld.apple.com/STP/091-99601-20180815-01EC2FD2-85EB-11E8-AB5B-AEA972136C40/SafariTechnologyPreview.dmg'
    sha256 '6fb5e485ade6e8fa6268bfada21c6ba3b950ce8439a5e12bba3e482f1e45e966'
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
