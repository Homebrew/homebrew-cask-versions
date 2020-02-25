cask 'telegram-desktop-dev' do
  version '1.9.18.beta'
  sha256 'f5d357683897d768247c62aeb3f821b9ce0fce45c6fd1e84f94ffc108a433511'

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
