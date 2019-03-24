cask 'signal-beta' do
  version '1.23.1-beta.1'
  sha256 'aa2342a812d7450454b2106577501ce350367b31cf25efbb114e60c197a4e21a'

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
