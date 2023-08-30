cask "discord-development" do
  version "0.0.8792"
  sha256 "fd841ce8791bc17e73ed70960eca1e17b2189a4d13ca75a3d2af1e2832ed48b9"

  url "https://dl-development.discordapp.net/apps/osx/#{version}/DiscordDevelopment.dmg",
      verified: "dl-development.discordapp.net/"
  name "Discord Development"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/development?platform=osx"
    strategy :header_match
  end

  auto_updates true

  app "Discord Development.app"

  zap trash: [
    "~/Library/Application Support/discorddevelopment",
    "~/Library/Caches/com.hnc.DiscordDevelopment",
    "~/Library/Caches/com.hnc.DiscordDevelopment.ShipIt",
    "~/Library/Cookies/com.hnc.DiscordDevelopment.binarycookies",
    "~/Library/Preferences/com.hnc.DiscordDevelopment.helper.plist",
    "~/Library/Preferences/com.hnc.DiscordDevelopment.plist",
    "~/Library/Saved Application State/com.hnc.DiscordDevelopment.savedState",
  ]
end
