cask 'discord-ptb' do
  version '0.0.47'
  sha256 '156264970b966d92d276a0599722e66f4b89fe29d356b2da58f9ca9d44497b22'

  url "https://cdn-ptb.discordapp.com/apps/osx/#{version}/DiscordPTB.dmg"
  appcast 'https://discordapp.com/api/ptb/updates?platform=osx'
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
