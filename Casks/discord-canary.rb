cask "discord-canary" do
  version "0.0.263"
  sha256 "5149b6535554ea8efff7c4b06c2b4c3bf93684ef8a02dbe6ab00800acfdc2ec2"

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
