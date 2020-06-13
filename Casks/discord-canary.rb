cask 'discord-canary' do
  version '0.0.250'
  sha256 'e1c410bc4829c62ac40a4e77e223b10cf732c8d28eabc030e70fad34dc616c97'

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
