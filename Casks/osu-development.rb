cask "osu-development" do
  version "2021.416.0"
  sha256 "e672c2f97ed69e0c640d1bd0c4850576fcb390059f683ce4ee802c30c460077b"

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
