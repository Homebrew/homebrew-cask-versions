cask 'omnifocus-beta' do
  version '2.9.x-r285870'
  sha256 'ca4a77430ffbb09c66bcee7ce60842c2824206f47b0c7136b4934b432baada85'

  url "https://omnistaging.omnigroup.com/omnifocus/releases/OmniFocus-#{version}-Test.dmg"
  name 'OmniFocus'
  homepage 'https://omnistaging.omnigroup.com/omnifocus/'

  app 'OmniFocus.app'

  zap delete: [
                '~/Library/containers/com.omnigroup.omnifocus2',
                '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
                '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2',
              ]
end
