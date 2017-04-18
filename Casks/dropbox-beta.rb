cask 'dropbox-beta' do
  version '25.3.20'
  sha256 'fc5a9d69132ba72c9ca610eed7141de173be4a04771928e0571efc1ea641c27f'

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
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
