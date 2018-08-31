cask 'signal-beta' do
  version '1.16.0-beta.1'
  sha256 'e07b598ad3dd626ed4e7155f5d9dfaab6222418b486342b8cef6a62f58e1ad9f'

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom'
  name 'Signal Beta'
  homepage 'https://signal.org/'

  auto_updates true

  app 'Signal Beta.app'

  zap trash: [
               '~/Library/Application Support/Signal',
               '~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist',
               '~/Library/Preferences/org.whispersystems.signal-desktop.plist',
               '~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState',
             ]
end
