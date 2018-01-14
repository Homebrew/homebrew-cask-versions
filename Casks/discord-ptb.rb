cask 'discord-ptb' do
  version '0.0.36'
  sha256 'f8ec8ac3b6898fd65cb7c02c1c402560682d34b18279c399d30abfac9ce65194'

  url "https://cdn-ptb.discordapp.com/apps/osx/#{version}/DiscordPTB.dmg"
  appcast 'https://discordapp.com/api/ptb/updates?platform=osx',
          checkpoint: '256c0d33250be4a9eede05f5877c9519f26e445ef4ef506ff9e8bd8fc366c363'
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
