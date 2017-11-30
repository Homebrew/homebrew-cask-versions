cask 'rhinoceroswip' do
  version '5E326w'
  sha256 '7b0ca852eb5a9b1ba07deb60254faffea8058af7ad3c04bcc442d3450eebc301'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/5.0/Mac/RhinoWIP_#{version}.dmg"
  appcast 'https://files.mcneel.com/rhino/5.0/mac/5CwipUpdates.xml',
          checkpoint: '3c7f584b50495d0ebb27074738ad0ed55e030a2d4282abc54233e8871bd86661'
  name 'Rhinoceros WIP'
  homepage 'https://www.rhino3d.com/download/rhino-for-mac/5/wip'

  auto_updates true

  app 'RhinoWIP.app'

  zap trash: [
               '~/Library/Preferences/com.mcneel.rhinoceros.plist',
               '~/Library/Caches/com.mcneel.rhinoceros',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl*',
             ]
end
