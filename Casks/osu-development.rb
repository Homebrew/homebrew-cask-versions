cask "osu-development" do
  version "2020.1225.0"
  sha256 "0c11e8ee2d9091efe9b92807cd68749c1e96bf76021816ddc12a5ba18c2bd2f2"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.zip"
  appcast "https://github.com/ppy/osu/releases.atom"
  name "osu!lazer"
  desc "Open source rhythm game"
  homepage "https://github.com/ppy/osu/"

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
