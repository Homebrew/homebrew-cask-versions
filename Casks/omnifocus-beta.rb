cask 'omnifocus-beta' do
  version '2.x-r283691'
  sha256 'bcec103e80344dd8d4f42007ba5c17ed288888ec542990472702e244cdf857ae'

  url "https://omnistaging.omnigroup.com/omnifocus/releases/OmniFocus-#{version}-Test.dmg"
  name 'OmniFocus'
  homepage 'https://omnistaging.omnigroup.com/omnifocus/'

  app 'OmniFocus.app'

  zap delete: [
                '~/Library/containers/com.omnigroup.omnifocus2',
                '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
                '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2',
              ]
end
