cask "discord-ptb" do
  version "0.0.52"
  sha256 "cd397531053b203dfa6bcf0f5dd2cf4dcdfd54b5064b7ee9f092a6129703f355"

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
