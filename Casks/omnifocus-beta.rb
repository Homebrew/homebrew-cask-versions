cask 'omnifocus-beta' do
  version '2.4.x-r253971'
  sha256 '899c6f3338a5a25b7d147c6a1109f2c707161aabe180a6c06e6943a292700fc4'

  url "https://omnistaging.omnigroup.com/omnifocus/releases/OmniFocus-#{version}-Test.dmg"
  name 'OmniFocus'
  homepage 'https://omnistaging.omnigroup.com/omnifocus/'
  license :commercial

  app 'OmniFocus.app'

  zap delete: [
                '~/Library/containers/com.omnigroup.omnifocus2',
                '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
                '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2',
              ]
end
