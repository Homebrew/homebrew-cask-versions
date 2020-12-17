cask "osu-development" do
  version "2020.1212.0"
  sha256 "c0ad8286d49dcd18e12925e0888e87a9721c304b5ca8c4b222b1d52480734d9c"

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
