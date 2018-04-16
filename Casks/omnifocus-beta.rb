cask 'omnifocus-beta' do
  version '2.x-r307830'
  sha256 'e04a8e8689a950cb38a77975ee9f97217b98d280be16fa07b33c9ce4c27efe3c'

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
