cask 'safari-technology-preview' do
  version '65'

  if MacOS.version <= :high_sierra
    url 'https://secure-appldnld.apple.com/STP/041-04652-20180910-76E7269A-B217-11E8-B40C-C08B7A641E38/SafariTechnologyPreview.dmg'
    sha256 '10c9c997d2042e190aa3ad30508fd77f673d3f850468338cb0b67226b185cb03'
  else
    url 'https://secure-appldnld.apple.com/STP/041-04649-20180910-76E7269A-B217-11E8-B40C-C08B7A641E38/SafariTechnologyPreview.dmg'
    sha256 '188d221b33cc6c5e1b56d146c11555bc8e5b5ad367c07ee15b8fffe91052b356'
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
