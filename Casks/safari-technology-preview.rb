cask 'safari-technology-preview' do
  version '59'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/091-91596-20180620-59E904CA-6E8B-11E8-A83B-21D3895FD671/SafariTechnologyPreview.dmg'
    sha256 '177cf747f4eeccb774adbb65c969fdcef1b3293172b8c69debe6a0b1a19c395d'
  else
    url 'https://secure-appldnld.apple.com/STP/091-91598-20180620-59E904CA-6E8B-11E8-A83B-21D3895FD671/SafariTechnologyPreview.dmg'
    sha256 '33d5b10a191dafdeac4adc58f8acae6f8c8cbfe8876681fcd85998932f79723e'
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
