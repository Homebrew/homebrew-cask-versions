cask :v1 => 'omnifocus-beta' do
  version '2.2.x-r233653'
  sha256 '6dbec967be6ad55dc6def5c3284979257e2c10e7a6d9fa3b09c1abd587ac7172'

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
