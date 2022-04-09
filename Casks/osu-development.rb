cask "osu-development" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.409.0"

  if Hardware::CPU.intel?
    sha256 "2b6e98074e335986889e77907896ee401d8ddcd8364cb72ab6be759e665e97cf"
  else
    sha256 "351524254d23425414f563be7c2cf13768b46d4a32d1c52e51aafb338703be48"
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
