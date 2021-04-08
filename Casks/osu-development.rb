cask "osu-development" do
  version "2021.407.1"
  sha256 "13ae09e2acd1fb6fea44105872487716f8a09ab0400cfe82d682767780c959c9"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.zip"
  name "osu!lazer"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :homepage
    strategy :git
    regex(/^(\d+(?:\.\d+)*)$/)
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
