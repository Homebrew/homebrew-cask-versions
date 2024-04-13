cask "discord-ptb" do
  version "0.0.108"
  sha256 "354567407f8f6ed3cdcbad6fdd27d2f9822e8c72132114e61c8a16b3ee080129"

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
  depends_on macos: ">= :high_sierra"

  app "Discord PTB.app"

  zap trash: [
    "~/Library/Application Support/com.hnc.DiscordPTB.ShipIt",
    "~/Library/Application Support/discordptb",
    "~/Library/Caches/com.hnc.DiscordPTB",
    "~/Library/Preferences/com.hnc.DiscordPTB.plist",
    "~/Library/Saved Application State/com.hnc.DiscordPTB.savedState",
  ]
end
