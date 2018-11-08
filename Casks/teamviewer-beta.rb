cask 'teamviewer-beta' do
  version '14'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.teamviewer.com/download/version_#{version}x/TeamViewer.dmg"
  name 'TeamViewer'
  homepage 'https://www.teamviewer.com/'

  auto_updates true
  conflicts_with cask: 'teamviewer-host'

  pkg 'Install TeamViewer.pkg'

  uninstall delete:    [
                         '/Applications/TeamViewer.app',
                         '/Applications/TeamViewer.app/Contents/Frameworks/Sparkle.framework/Versions/A/Resources/Autoupdate.app',
                         '/Applications/TeamViewer.app/Contents/Frameworks/TVNoteIntegration.framework/Versions/A/Resources/TeamViewer Note.app',
                       ],
            pkgutil:   [
                         'com.teamviewer.teamviewer14',
                         'com.teamviewer.teamviewer14Agent',
                         'com.teamviewer.teamviewer14AuthPlugin',
                         'com.teamviewer.teamviewer14PriviledgedHelper',
                         'com.teamviewer.teamviewer14Restarter',
                       ],
            launchctl: [
                         'com.teamviewer.desktop',
                         'com.teamviewer.service',
                         'com.teamviewer.Helper',
                         'com.teamviewer.teamviewer',
                         'com.teamviewer.teamviewer_desktop',
                         'com.teamviewer.teamviewer_service',
                       ],
            quit:      'com.teamviewer.TeamViewer'

  zap trash: [
               '/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
               '~/Library/Application Support/TeamViewer',
               '~/Library/Caches/com.teamviewer.TeamViewer',
               '~/Library/Cookies/com.teamviewer.TeamViewer.binarycookies',
               '~/Library/Logs/TeamViewer',
               '~/Library/Preferences/com.teamviewer.TeamViewer.plist',
               '~/Library/Preferences/com.teamviewer.teamviewer.preferences.Machine.plist',
               '~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
               '~/Library/Saved Application State/com.teamviewer.TeamViewer.savedState',
             ]
end
