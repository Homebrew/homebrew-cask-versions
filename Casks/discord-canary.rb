cask "discord-canary" do
  version "0.0.256"
  sha256 "2773d785049a0d3a76fc275329d25c349767136e36d8aa06a9b93a3875b35b23"

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
