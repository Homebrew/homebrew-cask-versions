cask "discord-canary" do
  version "0.0.264"
  sha256 "951a20e34fdef26a4ed3efa9028087f751763bbe0fac231d926b0767737eea81"

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
