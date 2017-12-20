cask 'discord-ptb' do
  version '0.0.34'
  sha256 'b892a5f15f6252ac680bd10c8a089d1fa2820d2ad7dc78f4cbda24844839c2e5'

  url "https://cdn-ptb.discordapp.com/apps/osx/#{version}/DiscordPTB.dmg"
  appcast 'https://discordapp.com/api/ptb/updates?platform=osx',
          checkpoint: 'f4f2e76512093a850964f6d9b8f5f3c32390a393ee06edd11bd08c3ba3f48aea'
  name 'Discord PTB'
  homepage 'https://discordapp.com/'

  app 'Discord PTB.app'

  zap trash: [
               '~/Library/Preferences/com.hnc.DiscordPTB.plist',
               '~/Library/Saved Application State/com.hnc.DiscordPTB.savedState',
               '~/Library/Caches/com.hnc.DiscordPTB',
               '~/Library/Application Support/com.hnc.DiscordPTB.ShipIt',
             ]
end
