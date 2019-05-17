cask 'dropbox-beta' do
  version '73.3.100'
  sha256 '1f88e07542a5877b97bbd74f567e3710624d2df5f877c024d072ffc3f41e1439'

  # dropbox.com was verified as official when first introduced to the cask
  url "https://www.dropbox.com/download?build=#{version}&plat=mac&type=full"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/t5/Desktop-client-builds/bd-p/101003016'

  auto_updates true
  conflicts_with cask: 'dropbox'

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox',
            launchctl:  'com.dropbox.DropboxMacUpdate.agent'

  zap trash: [
               '/Library/DropboxHelperTools',
               '~/.dropbox',
               '~/Library/Application Scripts/com.dropbox.foldertagger',
               '~/Library/Application Scripts/com.getdropbox.dropbox.garcon',
               '~/Library/Application Support/Dropbox',
               '~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.getdropbox.Dropbox',
               '~/Library/Caches/com.dropbox.DropboxMacUpdate',
               '~/Library/Caches/com.getdropbox.DropboxMetaInstaller',
               '~/Library/Caches/com.getdropbox.dropbox',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.dropbox.DropboxMacUpdate',
               '~/Library/Containers/com.dropbox.foldertagger',
               '~/Library/Containers/com.getdropbox.dropbox.garcon',
               '~/Library/Dropbox',
               '~/Library/Group Containers/com.getdropbox.dropbox.garcon',
               '~/Library/LaunchAgents/com.dropbox.DropboxMacUpdate.agent.plist',
               '~/Library/Logs/Dropbox_debug.log',
               '~/Library/Preferences/com.dropbox.DropboxMacUpdate.plist',
               '~/Library/Preferences/com.dropbox.DropboxMonitor.plist',
               '~/Library/Preferences/com.dropbox.tungsten.helper.plist',
               '~/Library/Preferences/com.getdropbox.dropbox.plist',
             ]
end
