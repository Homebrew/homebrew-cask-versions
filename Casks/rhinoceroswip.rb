cask 'rhinoceroswip' do
  version '5E236w'
  sha256 'e54af789067e22d0fb1a982f667754571339af0275a2e5f2d261d92229c85cad'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/5.0/Mac/RhinoWIP_#{version}.dmg"
  appcast 'https://files.mcneel.com/rhino/5.0/mac/5CwipUpdates.xml',
          checkpoint: '4bc74c44c725f2f2b187c621ba4d09b41c1dec2d5ccf889bb4ec93433250c591'
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
