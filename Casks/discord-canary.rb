cask "discord-canary" do
  version "0.0.266"
  sha256 "205e91ab8f6ee8d814213b6beb72d90b737de7cc4d1f4bcf6d8553bcd1ee0065"

  url "https://cdn-canary.discordapp.com/apps/osx/#{version}/DiscordCanary.dmg",
      verified: "cdn-canary.discordapp.com/apps/osx/"
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
