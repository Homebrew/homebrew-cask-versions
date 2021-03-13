cask "osu-development" do
  version "2021.312.0"
  sha256 "0de4193b5c122ee1a265d191afaf1e21836cf65a01f3548ec2568b33053d95ff"

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
