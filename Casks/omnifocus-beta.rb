cask :v1 => 'omnifocus-beta' do
  version '2.3.x-r245365'
  sha256 'd601cc7585c2a8c9127e3ca8ac1ac00afb64e63d643ca40491acc0d796768857'

  url "http://omnistaging.omnigroup.com/omnifocus-2.3.x/releases/OmniFocus-#{version}-Test.dmg"
  name 'OmniFocus'
  homepage 'http://omnistaging.omnigroup.com/omnifocus-2.3.x/'
  license :commercial

  app 'OmniFocus.app'

  zap :delete => [
                  '~/Library/containers/com.omnigroup.omnifocus2',
                  '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
                  '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                  '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2'
                 ]
end
