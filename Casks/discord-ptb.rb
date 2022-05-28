cask "discord-ptb" do
  version "0.0.62"
  sha256 "b5a56ef4bc73b386fc8bb3da3c08e275b57de553aad3b9840a24ff4267e6b534"

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
