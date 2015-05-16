cask :v1 => 'omnifocus-beta' do
  version '2.2.x-r233884'
  sha256 'bc5de2c73be2855074c11fe34fba1cc21d52b790727262ec0276f4b9ad3ba5de'

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
