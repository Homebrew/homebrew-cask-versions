cask "osu-development" do
  version "2022.319.0"

  if Hardware::CPU.intel?
    sha256 "3178c9c0b5c35e9a16f120f5a775f76a77e72c6df22450e18dfc95752475ffa9"
  else
    sha256 "bcc306951fb308359730f27f81a139614176f5dd147ce490daa9f9c6ecfe54da"
  end

  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"
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
