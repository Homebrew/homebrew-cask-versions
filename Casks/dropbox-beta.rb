cask 'dropbox-beta' do
  version '79.3.136'
  sha256 'c9c1e46da9fed12486f7f3e9a7c84eccad06a9c5919395d63bc88ebfd0084dde'

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
