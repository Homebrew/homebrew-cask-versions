cask :v1 => 'omnifocus-beta' do
  version '2.2.x-r234144'
  sha256 '934fb59cf57e6594c2e26dda85f3594fe04c5cd0236c7088bd534ca2186c141b'

  url "http://omnistaging.omnigroup.com/omnifocus-2/releases/OmniFocus-#{version}-Test.dmg"
  name 'OmniFocus'
  homepage 'http://omnistaging.omnigroup.com/omnifocus-2/'
  license :commercial

  app 'OmniFocus.app'

  zap :delete => [
                  '~/Library/containers/com.omnigroup.omnifocus2',
                  '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
                  '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                  '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2'
                 ]
end
