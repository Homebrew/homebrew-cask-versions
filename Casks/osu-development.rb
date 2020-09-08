cask "osu-development" do
  version "2020.903.0"
  sha256 "de3fe76bd057c2a72a95db930cd603bb7a08bca822adf6b8e1d7117c1e2aaa70"

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
