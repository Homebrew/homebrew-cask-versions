cask 'rhinoceroswip' do
  version '5E41w'
  sha256 '06af7ae2e0403f9ac2f2167dd02510da75b23e16ffd3700be6c8bae3e33acf4a'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/5.0/Mac/RhinoWIP_#{version}.dmg"
  appcast 'https://files.mcneel.com/rhino/5.0/mac/5CwipUpdates.xml',
          checkpoint: '930d07a9418223a88a80f7ada60f1b193c398d5ca750f70a36df8b89746fd3cf'
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
