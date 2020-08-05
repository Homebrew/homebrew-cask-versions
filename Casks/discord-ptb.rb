cask "discord-ptb" do
  version "0.0.50"
  sha256 "e29c73a87c4bc3cb44886fd769908c2bec2c417bf10936c2ccb7fe467b7ae061"

  url "https://cdn-ptb.discordapp.com/apps/osx/#{version}/DiscordPTB.dmg"
  appcast "https://discordapp.com/api/ptb/updates?platform=osx"
  name "Discord PTB"
  homepage "https://discordapp.com/"

  app "Discord PTB.app"

  zap trash: [
    "~/Library/Preferences/com.hnc.DiscordPTB.plist",
    "~/Library/Saved Application State/com.hnc.DiscordPTB.savedState",
    "~/Library/Caches/com.hnc.DiscordPTB",
    "~/Library/Application Support/com.hnc.DiscordPTB.ShipIt",
  ]
end
