cask 'discord-canary' do
  version '0.0.186'
  sha256 '42aa36770283503b75df899ed64459e1e773f03497667f15ceccb4fc4afbee13'

  url "https://cdn-canary.discordapp.com/apps/osx/#{version}/DiscordCanary.dmg"
  appcast 'https://discordapp.com/api/canary/updates?platform=osx',
          checkpoint: 'fea7dc564e0e6ccd7ca2e6762e86c7cac1ebea98c3df5050c57ddc9ac304d3d1'
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
