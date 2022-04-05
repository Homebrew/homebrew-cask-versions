cask "osu-development" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.405.0"

  if Hardware::CPU.intel?
    sha256 "291ce68623673e6d79ba34d37395f1e3cbfdfa66957d3c718ca969b7afdb1a4e"
  else
    sha256 "a6a93787ea21d99ea4de88bc22fc0cc87da19826157b68e570ee8ee8d29498f7"
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
