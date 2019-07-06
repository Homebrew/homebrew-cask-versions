cask 'telegram-desktop-dev' do
  version '1.7.11.beta'
  sha256 '4721bcbbc59ec15c0351363998eb6295505551246d4de3b9e6b9902b7b2a3ac9'

  # github.com/telegramdesktop/tdesktop was verified as official when first introduced to the cask
  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version.major_minor_patch}/tsetup.#{version}.dmg"
  appcast 'https://github.com/telegramdesktop/tdesktop/releases.atom',
          configuration: version.major_minor_patch
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram-desktop'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'

  zap trash: [
               '~/Library/Application Support/Telegram Desktop',
               '~/Library/Preferences/com.tdesktop.Telegram.plist',
               '~/Library/Saved Application State/com.tdesktop.Telegram.savedState',
             ]
end
