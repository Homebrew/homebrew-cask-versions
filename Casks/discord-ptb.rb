cask 'discord-ptb' do
  version '0.0.10'
  sha256 '2f9fe9e150f3fa1502366fb7caecaa5311655c1dc406168ae11c448e08ad4196'

  url "https://cdn-ptb.discordapp.com/apps/osx/#{version}/DiscordPTB.dmg"
  name 'Discord PTB'
  homepage 'https://discordapp.com'
  license :gratis

  app 'Discord PTB.app'

  zap delete: '~/Library/Preferences/com.hnc.DiscordPTB.plist'
end
