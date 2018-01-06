cask 'dropbox-beta' do
  version '41.3.79'
  sha256 '85156ab137d2f78830289fb0eeda4c2c1c63f208b1db6433eb85c699a6e1ee5c'

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
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
               '~/Library/Application Scripts/com.getdropbox.dropbox.garcon',
               '~/Library/Application Support/Dropbox',
               '~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.getdropbox.Dropbox',
               '~/Library/Caches/com.dropbox.DropboxMacUpdate',
               '~/Library/Caches/com.getdropbox.DropboxMetaInstaller',
               '~/Library/Caches/com.getdropbox.dropbox',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.dropbox.DropboxMacUpdate',
               '~/Library/Containers/com.getdropbox.dropbox.garcon',
               '~/Library/Dropbox',
               '~/Library/Group Containers/com.getdropbox.dropbox.garcon',
               '~/Library/Logs/Dropbox_debug.log',
               '~/Library/Preferences/com.dropbox.DropboxMacUpdate.plist',
               '~/Library/Preferences/com.dropbox.DropboxMonitor.plist',
               '~/Library/Preferences/com.dropbox.tungsten.helper.plist',
               '~/Library/Preferences/com.getdropbox.dropbox.plist',
             ]
end
