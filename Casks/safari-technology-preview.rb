cask 'safari-technology-preview' do
  version '77'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-45474-20190306-01614CC2-9292-493B-BD44-88C10420CC04/SafariTechnologyPreview.dmg'
    sha256 '05620f8907ca55565f2e458628c359e906bec260309855c85b4695191e57283b'
  else
    url 'https://secure-appldnld.apple.com/STP/041-43051-20190306-DAF02279-D00E-4F68-8D24-423551D294C8/SafariTechnologyPreview.dmg'
    sha256 'f8e6574c46a57b107aa9b8d623311b35796c01371d3f2712fa9070c03c802cba'
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
