cask :v1 => 'omnifocus-beta' do
  version '2.4.x-r249368'
  sha256 '5aaf46a7f207f0fb340e52ccc26acc1f114c374d8f5b0aea4d8b366f101b6a0a'

  url "https://omnistaging.omnigroup.com/omnifocus/releases/OmniFocus-#{version}-Test.dmg"
  name 'OmniFocus'
  homepage 'https://omnistaging.omnigroup.com/omnifocus/'
  license :commercial

  app 'OmniFocus.app'

  zap :delete => [
                  '~/Library/containers/com.omnigroup.omnifocus2',
                  '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
                  '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                  '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2'
                 ]
end
