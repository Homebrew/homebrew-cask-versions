cask 'safari-technology-preview' do
  version '76'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-40519-20190220-60D773FF-AB9F-47A5-AEF0-018F4640D86A/SafariTechnologyPreview.dmg'
    sha256 'c13f0286c2bed1eb643c200f0fa5a436193e7bf8f87be4ef2ef34145ed64c3d9'
  else
    url 'https://secure-appldnld.apple.com/STP/041-40625-20190220-BF218A9D-C022-47E2-B5B8-8B963AAF9D87/SafariTechnologyPreview.dmg'
    sha256 '91a394119fb086f185140477736289091954c9409b856a6c97ec9e3a040c4165'
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
