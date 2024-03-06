cask "discord-development" do
  version "0.0.31"
  sha256 "1deffd287d683328fda1f612c0785daa6ee3283b2fac6a4f3e32c40fd7d2ab7d"

  url "https://dl-development.discordapp.net/apps/osx/#{version}/DiscordDevelopment.dmg",
      verified: "dl-development.discordapp.net/"
  name "Discord Development"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/development?platform=osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Discord Development.app"

  zap trash: [
    "~/Library/Application Support/discorddevelopment",
    "~/Library/Caches/com.hnc.DiscordDevelopment",
    "~/Library/Caches/com.hnc.DiscordDevelopment.ShipIt",
    "~/Library/Cookies/com.hnc.DiscordDevelopment.binarycookies",
    "~/Library/Preferences/com.hnc.DiscordDevelopment.helper.plist",
    "~/Library/Preferences/com.hnc.DiscordDevelopment.plist",
    "~/Library/Saved Application State/com.hnc.DiscordDevelopment.savedState",
  ]
end
