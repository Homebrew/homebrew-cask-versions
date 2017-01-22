cask 'discord-ptb' do
  version '0.0.29'
  sha256 '90e3825df9f36ce489bc71a43d30a1716db256fca474df17b940c9b09a9cf1f5'

  url "https://cdn-ptb.discordapp.com/apps/osx/#{version}/DiscordPTB.dmg"
  name 'Discord PTB'
  homepage 'https://discordapp.com/'

  app 'Discord PTB.app'

  zap delete: [
                '~/Library/Preferences/com.hnc.DiscordPTB.plist',
                '~/Library/Saved Application State/com.hnc.DiscordPTB.savedState',
                '~/Library/Caches/com.hnc.DiscordPTB',
                '~/Library/Application Support/com.hnc.DiscordPTB.ShipIt',
              ]
end
