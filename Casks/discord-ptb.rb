cask 'discord-ptb' do
  version '0.0.22'
  sha256 '8f9a40347c494a62137d1307da320bf08b2b720cd3b11cf5f5fc88c38f993b16'

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
