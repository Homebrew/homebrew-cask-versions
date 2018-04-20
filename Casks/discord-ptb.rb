cask 'discord-ptb' do
  version '0.0.37'
  sha256 'c0e9e8b1e0beb8812ee83e9e14c90394ff08cfe0115397f35954b8eaad8d5957'

  url "https://cdn-ptb.discordapp.com/apps/osx/#{version}/DiscordPTB.dmg"
  appcast 'https://discordapp.com/api/ptb/updates?platform=osx',
          checkpoint: 'e5a30f6592f29e5c7294c1a23f9f1e27cacc434fb8f328df7d8e1859e24f71ad'
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
