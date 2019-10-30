cask 'safari-technology-preview' do
  if MacOS.version <= :mojave
    version '95,061-37166-20191029-590d74a5-3a2b-47c1-a6c6-b911591bf13b'
    sha256 '564d468bc76023ec003c3baefeccf3dc7462845a848f4bc6118b47d9c7bdede3'
  else
    version '95,061-37063-20191029-46eda149-4b97-4e36-834d-b19373fe8209'
    sha256 '012b09ade04a49b99e902fcf1fee1ae6fb0a9d050b4f96c2a92f86345dbede05'
  end

  url "https://secure-appldnld.apple.com/STP/#{version.after_comma}/SafariTechnologyPreview.dmg"
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
