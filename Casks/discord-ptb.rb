cask 'discord-ptb' do
  version '0.0.16'
  sha256 '21be86a0bb2539550a935b3f3f45ba23a07def2dc84422052bfa8959f7b09432'

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
