cask "discord-canary" do
  version "0.0.251"
  sha256 "1fbeff1a34bc98190dc5fb12c1b24ac5c52cad9ac9d537a2798a1a9743a2b3ef"

  url "https://cdn-canary.discordapp.com/apps/osx/#{version}/DiscordCanary.dmg"
  appcast "https://discordapp.com/api/canary/updates?platform=osx"
  name "Discord Canary"
  homepage "https://discordapp.com/"

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
