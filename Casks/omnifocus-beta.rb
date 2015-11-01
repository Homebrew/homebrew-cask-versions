cask :v1 => 'omnifocus-beta' do
  version '2.3.x-r247728'
  sha256 '5aaf46a7f207f0fb340e52ccc26acc1f114c374d8f5b0aea4d8b366f101b6a0a'

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
