cask 'safari-technology-preview' do
  version '73'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-30081-20190109-FB5AD328-FA9C-11E8-ADCB-8E0E7D00924D/SafariTechnologyPreview.dmg'
    sha256 '773d1f6ff7063acebf0bbc784f8e029e0b47d12d7f56bb449f59b618c3cc4130'
  else
    url 'https://secure-appldnld.apple.com/STP/041-29846-20190109-FB5AD328-FA9C-11E8-ADCB-8E0E7D00924D/SafariTechnologyPreview.dmg'
    sha256 '77a60bd319db4576c02e37266a0d62bd5164d5e4375a54340dc30e59c662a9f2'
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
