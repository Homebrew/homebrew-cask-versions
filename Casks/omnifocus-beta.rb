cask :v1 => 'omnifocus-beta' do
  version '2.2.x-r238263'
  sha256 '2524ac2ec3541bd65a5aabac111c72f47a05d589b17e313ea37668a498476f58'

  url "http://omnistaging.omnigroup.com/omnifocus-2.2.x/releases/OmniFocus-#{version}-Test.dmg"
  name 'OmniFocus'
  homepage 'http://omnistaging.omnigroup.com/omnifocus-2.2.x/'
  license :commercial

  app 'OmniFocus.app'

  zap :delete => [
                  '~/Library/containers/com.omnigroup.omnifocus2',
                  '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
                  '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                  '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2'
                 ]
end
