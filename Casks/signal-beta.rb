cask 'signal-beta' do
  version '1.32.0-beta.6'
  sha256 '61cf75ce13fcca204a2f6fb075bb98b6655443a375f7e74c52fa689c7aa81a63'

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
