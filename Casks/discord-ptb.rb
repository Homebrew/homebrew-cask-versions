cask "discord-ptb" do
  version "0.0.54"
  sha256 "fb877a47ea74b6ef5b0e75dc160440aa574992540e6d53b456d617d068925114"

  url "https://dl-ptb.discordapp.net/apps/osx/#{version}/DiscordPTB.dmg",
      verified: "dl-ptb.discordapp.net/"
  name "Discord PTB"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/ptb?platform=osx"
    strategy :header_match
  end

  app "Discord PTB.app"

  zap trash: [
    "~/Library/Preferences/com.hnc.DiscordPTB.plist",
    "~/Library/Saved Application State/com.hnc.DiscordPTB.savedState",
    "~/Library/Caches/com.hnc.DiscordPTB",
    "~/Library/Application Support/com.hnc.DiscordPTB.ShipIt",
  ]
end
