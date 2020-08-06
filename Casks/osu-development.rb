cask "osu-development" do
  version "2020.806.0"
  sha256 "8808ecee68d5b2c2bf3d39092ce9cdadab2fb241b21d9b4933c503040e8b75ff"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.zip"
  appcast "https://github.com/ppy/osu/releases.atom"
  name "osu!lazer"
  homepage "https://github.com/ppy/osu/"

  conflicts_with cask: "osu"
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
