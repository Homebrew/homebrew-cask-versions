cask "discord-canary" do
  version "0.0.262"
  sha256 "64fe3b5cb7990f2699013c857b3113a680c3ecef8a16cbb52a2622e1775af7e4"

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
