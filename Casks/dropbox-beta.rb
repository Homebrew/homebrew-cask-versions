cask 'dropbox-beta' do
  version '21.3.18'
  sha256 '2ebe02ba9b16c038bc4c39704296d08e424c81d06977725fa8a6f4d5ead66f71'

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  appcast 'https://www.dropbox.com/release_notes/rss.xml',
          checkpoint: '2794637a8b028d903f0d27432291dce968886923a86325994156cf1206edec80'
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
