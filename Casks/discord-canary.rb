cask 'discord-canary' do
  version '0.0.229'
  sha256 'ebf0b5655ff77e138686b2a5fb4c1954b789fad43354a52eb65f4730e218676f'

  url "https://cdn-canary.discordapp.com/apps/osx/#{version}/DiscordCanary.dmg"
  appcast 'https://discordapp.com/api/canary/updates?platform=osx'
  name 'Discord Canary'
  homepage 'https://discordapp.com/'

  auto_updates true

  app 'Discord Canary.app'

  zap trash: [
               '~/Library/Application Support/discordcanary',
               '~/Library/Caches/com.hnc.DiscordCanary',
               '~/Library/Caches/com.hnc.DiscordCanary.ShipIt',
               '~/Library/Cookies/com.hnc.DiscordCanary.binarycookies',
               '~/Library/Preferences/com.hnc.DiscordCanary.helper.plist',
               '~/Library/Preferences/com.hnc.DiscordCanary.plist',
               '~/Library/Saved Application State/com.hnc.DiscordCanary.savedState',
             ]
end
