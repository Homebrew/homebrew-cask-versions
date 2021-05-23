cask "osu-development" do
  version "2021.523.0"
  sha256 "096a2c527736edfb581a251fda98e5de088b2fc755ad824eb7e8b1b1dbd3013e"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.zip"
  name "osu!lazer"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
