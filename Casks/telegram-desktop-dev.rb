cask 'telegram-desktop-dev' do
  version '1.4.7'
  sha256 'd6ba917612a84408ba6793d616ecae03b10911f0349eb2389f9b5f669a2dc377'

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
