cask 'discord-ptb' do
  version '0.0.246'
  sha256 '414bd4387bace461cae1f549b9a786d7fcb5454920b48215303145724f4fd81f'

  url "https://cdn-ptb.discordapp.com/apps/osx/#{version}/DiscordPTB.dmg"
  name 'Discord PTB'
  homepage 'https://discordapp.com'
  license :gratis

  app 'Discord PTB.app'

  zap delete: [
                '~/Library/Preferences/com.hnc.DiscordPTB.plist',
                '~/Library/Saved Application State/com.hnc.DiscordPTB.savedState',
                '~/Library/Caches/com.hnc.DiscordPTB',
                '~/Library/Application Support/com.hnc.DiscordPTB.ShipIt',
              ]
end
