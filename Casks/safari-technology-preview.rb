cask 'safari-technology-preview' do
  version '82'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-58764-20190501-d28417f0-1e4c-4abb-9cdf-b469cf8c1b48/SafariTechnologyPreview.dmg'
    sha256 'a54adcc8112eec0e31c0c7e8858b3f73e924ae1a97482d153b92201f2753f8ce'
  else
    url "https://secure-appldnld.apple.com/STP/#{version.after_comma}/SafariTechnologyPreview.dmg"
    sha256 'b3762454597c1bd7ece748880d4247a73f3c3b879b9023d6c2e444c2889e28f4'
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
