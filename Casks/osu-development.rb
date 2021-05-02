cask "osu-development" do
  version "2021.502.0"
  sha256 "47ca7497b58a71ca73d91db3895da0232de9d08df89be05644aec11bdbe7b419"

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
