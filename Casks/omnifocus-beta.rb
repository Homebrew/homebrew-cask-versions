cask 'omnifocus-beta' do
  version '2.4.x-r253472'
  sha256 '3420deb1dee658e4e9e1d158fe429cb0df2eae682935a24da351bfb26fd07ca0'

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
