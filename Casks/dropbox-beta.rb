cask 'dropbox-beta' do
  version '17.3.27'
  sha256 'f5b5097e97177c20561e86a9fe2130488feff2727ebe8b5f662c5807e0f7c49b'

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  appcast 'https://www.dropbox.com/release_notes/rss.xml',
          checkpoint: 'bc6e6e917ade0cadefdf23611c726afd4c362a9758062063457e2afed05b5181'
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/t5/Desktop-client-builds/bd-p/101003016'

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: [
                '~/.dropbox',
                '~/Library/Application Scripts/com.getdropbox.dropbox.garcon',
                '~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.getdropbox.Dropbox',
                '~/Library/Caches/com.getdropbox.dropbox',
                '~/Library/Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Group Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Logs/Dropbox_debug.log',
                '/Library/DropboxHelperTools',
              ]
end
