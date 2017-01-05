cask 'rhinoceroswip' do
  version '5D177w'
  sha256 '471db10d336a87c9990e7003768bd2016ffc3481bd6db4b1148edff5cd96ab56'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/5.0/Mac/RhinoWIP_#{version}.dmg"
  appcast 'https://files.mcneel.com/rhino/5.0/mac/5CwipUpdates.xml',
          checkpoint: '97a17e48a8804954497eb545f8a4d81f65f03e6c385b875f5426aa9c12375428'
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
