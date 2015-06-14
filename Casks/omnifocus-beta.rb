cask :v1 => 'omnifocus-beta' do
  version '2.2.x-r235511'
  sha256 '5f11983b2d4ec9e447a5b69dd3c09e70a100f9434fd6bcb8ad98f4bfe82f071c'

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
