cask "discord-ptb" do
  version "0.0.49"
  sha256 "888b1227fa456438342594d0921e758514c09644d6aa23de9ea921be9747a085"

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
