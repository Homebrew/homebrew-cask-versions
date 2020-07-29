cask "discord-ptb" do
  version "0.0.48"
  sha256 "d4bbbd3fefb53dbbac42823477762df083f139e3cf360877f85f80d3744b6237"

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
