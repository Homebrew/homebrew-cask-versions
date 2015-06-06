cask :v1 => 'omnifocus-beta' do
  version '2.2.x-r235338'
  sha256 '56196c7d5f09b84ea8cb68901f165a00238c9016e2d94539babc04a3f6ae79bd'

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
