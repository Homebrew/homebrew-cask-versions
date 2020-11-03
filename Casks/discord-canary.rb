cask "discord-canary" do
  version "0.0.260"
  sha256 "1303e8172b8f03c98b0b1d8b412c087cfc5876246bd557f2c2e65aca0d936877"

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
