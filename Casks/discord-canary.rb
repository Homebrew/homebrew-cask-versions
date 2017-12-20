cask 'discord-canary' do
  version '0.0.181'
  sha256 '5e32dd3bcf79d0b74f3d27ad30a941329767c0a6eeb9518b8c855e26dde61d05'

  url "https://cdn-canary.discordapp.com/apps/osx/#{version}/DiscordCanary.dmg"
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
