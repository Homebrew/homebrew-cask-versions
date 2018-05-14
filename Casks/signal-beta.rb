cask 'signal-beta' do
  version '1.11.0-beta.3'
  sha256 '54f9230c1146609b308e7ad0550e5c26f748b7e3f90890bb841b52762f349038'

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: '25a8a902518c44a13ddb9eaab2d60644fa034b72df7cac41f9f0e8bf60097e66'
  name 'Signal-beta'
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
