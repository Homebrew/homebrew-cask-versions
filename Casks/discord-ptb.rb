cask "discord-ptb" do
  version "0.0.55"
  sha256 "827ce9bf9fb27ddec410a04fc40c1af5f84c5324906ef566322e775b232f78f9"

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
