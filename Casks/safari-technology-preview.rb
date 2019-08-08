cask 'safari-technology-preview' do
  version '88,041-88913-20190722-d85ec1b0-36ca-4d37-8154-4195c12f2260'

  if MacOS.version <= :mojave
    url 'https://secure-appldnld.apple.com/STP/041-89211-20190722-e52fc28f-2fb4-40c5-9236-6d716f96f74c/SafariTechnologyPreview.dmg'
    sha256 '77a4fe78ba1d59c4963bc2bea93c4f2041fc811fc1ae0dea1d25a41dc7b37ed1'
  else
    url "https://secure-appldnld.apple.com/STP/#{version.after_comma}/SafariTechnologyPreview.dmg"
    sha256 '3bf06d5748a8910611f2a33e7c9c49797fcf628aa070a605e3817c50826db79f'
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
