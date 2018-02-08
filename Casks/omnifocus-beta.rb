cask 'omnifocus-beta' do
  version '2.x-r303501'
  sha256 '2c15ac0c7ddf6d4e8ef7cb70fceb6a13556e67b45f5a4a586a9b1ae3aa53660f'

  url "https://omnistaging.omnigroup.com/omnifocus/releases/OmniFocus-#{version}-Test.dmg"
  name 'OmniFocus'
  homepage 'https://omnistaging.omnigroup.com/omnifocus/'

  app 'OmniFocus.app'

  zap trash: [
               '~/Library/containers/com.omnigroup.omnifocus2',
               '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
               '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
               '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2',
             ]
end
