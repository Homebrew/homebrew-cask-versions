cask 'dropbox-beta' do
  version '39.3.48'
  sha256 '02a8a0e00c0f94fa286900aee7fd39eedf5b4ad372f5c8f4cb5904fdcf8f3739'

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/t5/Desktop-client-builds/bd-p/101003016'

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox',
            launchctl:  'com.dropbox.DropboxMacUpdate.agent.plist'

  zap delete: [
                '/Library/DropboxHelperTools',
                '/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/SidebarDropBoxFolder.icns',
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
