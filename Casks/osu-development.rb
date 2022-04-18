cask "osu-development" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.418.0"

  if Hardware::CPU.intel?
    sha256 "e4a7ae95e553fbf32006a548e2fda77c8716ef0a6ce6a05dee350fd4ea1d1a65"
  else
    sha256 "6b3218d3fc0602fccfbbeb743a1fe6348bf3784bb199d1366b86257ad41878ee"
  end

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
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
