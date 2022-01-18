cask "osu-development" do
  version "2022.118.0"
  sha256 "03cbbebf0b5664ff2bb971dbbe4781ca43eef218b881c9a7749b340411d87eb4"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.zip"
  name "osu!lazer"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
