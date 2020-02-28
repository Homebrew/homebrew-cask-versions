cask 'intelliscape-caffeine-beta' do
  version '1.1.3'
  sha256 'b836e0b353d04ce63ea35172dd890bd5a3733315829621130416920445f1017a'

  # cl.ly/a137e160a27c was verified as official when first introduced to the cask
  url 'https://cl.ly/a137e160a27c/download/Caffeine.zip'
  appcast 'https://intelliscapesolutions.com/apps/caffeine/releasenotes'
  name 'Caffeine'
  homepage 'https://intelliscapesolutions.com/apps/caffeine'

  conflicts_with cask: 'caffeine'

  app 'Caffeine.app'

  zap trash: ['~/Library/Preferences/com.intelliscapesolutions.caffeine.plist', '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.intelliscapesolutions.caffeine.sfl*']
end
