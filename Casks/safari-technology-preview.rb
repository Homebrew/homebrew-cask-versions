cask 'safari-technology-preview' do
  version '41'

  if MacOS.version == :sierra
    sha256 'c1ad7368f643c5c40bde936152e154607938200bc02271b61a591244b0c9c738'
    url 'https://secure-appldnld.apple.com/STP/091-34347-20171004-850A4944-A833-11E7-89E3-B91DCB2232C2/SafariTechnologyPreview.dmg'
  else
    sha256 'a11acbfbdc0e91e84d5e79e4aa7235280f0023ae5121ca2d076df783577a3a85'
    url 'https://secure-appldnld.apple.com/STP/091-34342-20171004-850AA9D4-A833-11E7-AD5B-B81DCB2232C2/SafariTechnologyPreview.dmg'
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
