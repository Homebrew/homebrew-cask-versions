cask "osu-development" do
  version "2021.323.0"
  sha256 "ac4fae317566203fc41446f9d3ab3b2434161450dfdce7bde31cc29b91ad0b11"

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
