cask 'discord-canary' do
  version '0.0.242'
  sha256 '8a40f7bdca9d40048d7379155cb50a2a33682c87f8fcf652aa47744be3aa7936'

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
