cask 'safari-technology-preview' do
  version '48'

  if MacOS.version == :sierra
    sha256 '72f9fe2f2f96f42b06279d8b193cb77ea1ad3b2535728cd2bbbe78f1de156726'
    url 'https://secure-appldnld.apple.com/STP/091-59952-20180124-A183CC8E-008B-11E8-996C-32C77CCC33A9/SafariTechnologyPreview.dmg'
  else
    sha256 'e19771017334c6b6425a4a238e6180c502cdf785990eaf4aad08ddc34f881788'
    url 'https://secure-appldnld.apple.com/STP/091-59953-20180124-A183A31C-008B-11E8-873F-31C77CCC33A9/SafariTechnologyPreview.dmg'
  end

  name 'Safari Technology Preview'
  homepage 'https://developer.apple.com/safari/download/'

  depends_on macos: '>= :sierra'

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
