cask 'telegram-desktop-dev' do
  version '1.4.8'
  sha256 '151155a7822b851b30954f1fb6a9d1bfefb93855b6390784fd3c04658ff54bfe'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.beta.dmg"
  appcast 'https://github.com/telegramdesktop/tdesktop/releases.atom'
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram-desktop'
  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'

  zap trash: [
               '~/Library/Application Support/Telegram Desktop',
               '~/Library/Preferences/com.tdesktop.Telegram.plist',
               '~/Library/Saved Application State/com.tdesktop.Telegram.savedState',
             ]
end
