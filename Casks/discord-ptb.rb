cask "discord-ptb" do
  version "0.0.53"
  sha256 "3b755ddfa65c680d6c91ab5edb445c51c2a4102860faaea0ee78ce13984c3223"

  url "https://cdn-ptb.discordapp.com/apps/osx/#{version}/DiscordPTB.dmg"
  appcast "https://discordapp.com/api/ptb/updates?platform=osx"
  name "Discord PTB"
  homepage "https://discordapp.com/"

  app "Discord PTB.app"

  zap trash: [
    "~/Library/Preferences/com.hnc.DiscordPTB.plist",
    "~/Library/Saved Application State/com.hnc.DiscordPTB.savedState",
    "~/Library/Caches/com.hnc.DiscordPTB",
    "~/Library/Application Support/com.hnc.DiscordPTB.ShipIt",
  ]
end
