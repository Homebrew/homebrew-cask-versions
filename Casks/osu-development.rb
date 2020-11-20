cask "osu-development" do
  version "2020.1121.0"
  sha256 "fd23d7fce519a6a504e740faf1392670894df5dcd4eb7313e23d5067be2f4e66"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.zip"
  appcast "https://github.com/ppy/osu/releases.atom"
  name "osu!lazer"
  homepage "https://github.com/ppy/osu/"

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
