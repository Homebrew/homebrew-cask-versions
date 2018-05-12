cask 'discord-ptb' do
  version '0.0.38'
  sha256 '3ce855008aa5d0888cfd2fabf99d0513d5644f7168407b5f4fb395a723acf829'

  url "https://cdn-ptb.discordapp.com/apps/osx/#{version}/DiscordPTB.dmg"
  appcast 'https://discordapp.com/api/ptb/updates?platform=osx',
          checkpoint: 'a8b5e5bba59d6ddb5a03bd9e336668fbe8aa44fb08ea265bac88d0e6a1fd8f6e'
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
