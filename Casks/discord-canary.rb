cask "discord-canary" do
  version "0.0.267"
  sha256 "1ac8acc1f400b9d7ec47e4ba3e8fedf776fafbae62398cd7b1b514f12729abae"

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
