cask "discord-canary" do
  version "0.0.254"
  sha256 "62cb7a04416be8340259d413dfc093c83f5a83aaa27cf3e85d84b5f99b8f905f"

  # discordapp.com was verified as official when first introduced to the cask
  url "https://cdn-canary.discordapp.com/apps/osx/#{version}/DiscordCanary.dmg"
  appcast "https://canary.discord.com/api/canary/updates?platform=osx"
  name "Discord Canary"
  homepage "https://canary.discord.com/"

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
