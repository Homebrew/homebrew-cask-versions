cask "discord-canary" do
  version "0.0.280"
  sha256 "06fc2d3d15c8a7ecdee6310992fbb634851c60edffe31bd0dec8f8ccbd868c31"

  url "https://dl-canary.discordapp.net/apps/osx/#{version}/DiscordCanary.dmg",
      verified: "dl-canary.discordapp.net/"
  name "Discord Canary"
  desc "Voice and text chat software"
  homepage "https://canary.discord.com/"

  livecheck do
    url "https://discord.com/api/download/canary?platform=osx"
    strategy :header_match
  end

  auto_updates true

  app "Discord Canary.app"

  zap trash: [
    "~/Library/Application Support/discordcanary",
    "~/Library/Caches/com.hnc.DiscordCanary",
    "~/Library/Caches/com.hnc.DiscordCanary.ShipIt",
    "~/Library/Cookies/com.hnc.DiscordCanary.binarycookies",
    "~/Library/Preferences/com.hnc.DiscordCanary.helper.plist",
    "~/Library/Preferences/com.hnc.DiscordCanary.plist",
    "~/Library/Saved Application State/com.hnc.DiscordCanary.savedState",
  ]
end
