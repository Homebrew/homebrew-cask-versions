cask :v1 => 'omnifocus-beta' do
  version '2.2.x-r241602'
  sha256 '72c8e43de504ba18450d8c04cefefeea8e90bb81561b8c52869c2ce91ed61ae8'

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
