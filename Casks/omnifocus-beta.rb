cask 'omnifocus-beta' do
  version '2.x-r306258'
  sha256 'b2214831838c9e48d0adcc6ce53d5802f3413ab83c8362ed990e6fce03e08480'

  url "https://omnistaging.omnigroup.com/omnifocus/releases/OmniFocus-#{version}-Test.dmg"
  name 'OmniFocus'
  homepage 'https://omnistaging.omnigroup.com/omnifocus/'

  depends_on macos: '>= :sierra'

  app 'OmniFocus.app'

  zap trash: [
               '~/Library/containers/com.omnigroup.omnifocus2',
               '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
               '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
               '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2',
             ]
end
