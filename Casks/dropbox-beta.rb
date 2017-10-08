cask 'dropbox-beta' do
  version '37.3.25'
  sha256 'cd1bf14d2f01e1652ae55d9e6b68fa070ca182ece20710ab9a3fb3c99a3adecd'

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/t5/Desktop-client-builds/bd-p/101003016'

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: [
                '/Library/DropboxHelperTools',
                '~/Library/Application Scripts/com.getdropbox.dropbox.garcon',
                '~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.getdropbox.Dropbox',
                '~/Library/Caches/com.dropbox.DropboxMacUpdate',
                '~/Library/Caches/com.getdropbox.dropbox',
                '~/Library/Caches/com.getdropbox.DropboxMetaInstaller',
                '~/Library/Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Group Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Logs/Dropbox_debug.log',
              ],
      trash:  [
                '~/.dropbox',
                '~/Library/Application Support/Dropbox',
                '~/Library/Dropbox',
                '~/Library/Preferences/com.dropbox.DropboxMacUpdate.plist',
                '~/Library/Preferences/com.dropbox.tungsten.helper.plist',
                '~/Library/Preferences/com.getdropbox.dropbox.plist',
              ]
end
