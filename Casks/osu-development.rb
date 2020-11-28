cask "osu-development" do
  version "2020.1128.0"
  sha256 "8b3ef112377ba0515072efabf9a3ca6b0d9b81c18766e17095a74aba36aca45c"

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
