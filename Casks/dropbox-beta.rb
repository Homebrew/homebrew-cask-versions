cask 'dropbox-beta' do
  version '40.3.43'
  sha256 '3611278bec94b8959792b3203108b6cfbc1ecdc6a6c19dbfc701b8f59f69e7a2'

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/t5/Desktop-client-builds/bd-p/101003016'

  conflicts_with cask: 'dropbox'

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox',
            launchctl:  'com.dropbox.DropboxMacUpdate.agent'

  zap delete: [
                '/Library/DropboxHelperTools',
                '~/Library/Application Scripts/com.getdropbox.dropbox.garcon',
                '~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.getdropbox.Dropbox',
                '~/Library/Caches/com.dropbox.DropboxMacUpdate',
                '~/Library/Caches/com.getdropbox.dropbox',
                '~/Library/Caches/com.getdropbox.DropboxMetaInstaller',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.dropbox.DropboxMacUpdate',
                '~/Library/Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Group Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Logs/Dropbox_debug.log',
              ],
      trash:  [
                '~/.dropbox',
                '~/Library/Application Support/Dropbox',
                '~/Library/Dropbox',
                '~/Library/Preferences/com.dropbox.DropboxMacUpdate.plist',
                '~/Library/Preferences/com.dropbox.DropboxMonitor.plist',
                '~/Library/Preferences/com.dropbox.tungsten.helper.plist',
                '~/Library/Preferences/com.getdropbox.dropbox.plist',
              ]
end
