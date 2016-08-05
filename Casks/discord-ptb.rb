cask 'discord-ptb' do
  version '0.0.245'
  sha256 'cffa842f60ad6eb773e5fc9d6ae49fd69b9fe69f5ecf6d55ea69271898141363'

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
