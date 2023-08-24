cask "discord-ptb" do
  version "0.0.76"
  sha256 "b64df9333a31ea80a9b4e8d5aebc0e8eac4b14cd5a4d170c5d45abd3ce4ebec7"

  url "https://dl-ptb.discordapp.net/apps/osx/#{version}/DiscordPTB.dmg",
      verified: "dl-ptb.discordapp.net/apps/osx/"
  name "Discord PTB"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/ptb?platform=osx"
    strategy :header_match
  end

  auto_updates true

  app "Discord PTB.app"

  zap trash: [
    "~/Library/Application Support/com.hnc.DiscordPTB.ShipIt",
    "~/Library/Caches/com.hnc.DiscordPTB",
    "~/Library/Preferences/com.hnc.DiscordPTB.plist",
    "~/Library/Saved Application State/com.hnc.DiscordPTB.savedState",
  ]
end
