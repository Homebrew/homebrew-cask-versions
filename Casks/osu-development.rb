cask "osu-development" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.424.0"

  if Hardware::CPU.intel?
    sha256 "c2e981e10a451b83833c50e5e02669b3f08fe71c4b44e70e8198d8dcb2447ee2"
  else
    sha256 "af3850cf51d301156ec4a70e970f59a31ec4754673d8849dae243f6a365b32da"
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
