cask "osu-development" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.327.0"

  if Hardware::CPU.intel?
    sha256 "e1a2ca0829af9193c840bbc635818a1c8646af6e999dc3fac466a94de03e6f4b"
  else
    sha256 "c6a13b937432cd277194f3aa7f58900a244ae870b59558f75f895472a41aef44"
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
