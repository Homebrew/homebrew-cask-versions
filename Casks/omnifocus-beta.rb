cask 'omnifocus-beta' do
  version '2.5.x-r260369'
  sha256 '268baee0cc0129eb755c54c52e2207c6c239a6864d41844284ed65cb7c36b01b'

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
