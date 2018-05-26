cask 'signal-beta' do
  version '1.12.0-beta.1'
  sha256 '72ec6f288df664b39593b7db688efa97af0c16aef5b078b897b897ba54364e7c'

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: 'dc91021114a102013ef1203e31f336796950e15212702b4fb534d9451ca11928'
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
