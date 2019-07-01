cask 'discord-ptb' do
  version '0.0.43'
  sha256 '4a154e0b84beaa40bf7aaffbcd042ecac29e2f469d237c8158614f16e8cf0f72'

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
