cask 'rhinoceroswip' do
  version '5E63w'
  sha256 'e02a04067ea1edd1061c7ad3a76081707c3ec156ef850141a2143893a1a23789'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/5.0/Mac/RhinoWIP_#{version}.dmg"
  appcast 'https://files.mcneel.com/rhino/5.0/mac/5CwipUpdates.xml',
          checkpoint: '48533b7d55f76f40529923b5567ec0ef7e2a5592d529254433ce1644e941f30c'
  name 'Rhinoceros WIP'
  homepage 'https://www.rhino3d.com/download/rhino-for-mac/5/wip'

  auto_updates true

  app 'RhinoWIP.app'

  zap delete: [
                '~/Library/Preferences/com.mcneel.rhinoceros.plist',
                '~/Library/Caches/com.mcneel.rhinoceros',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl',
              ]
end
