cask "playcover-community-beta" do
  version "3.0.0-beta.1"
  sha256 "0f7c40d2654f9a70e52901fc4de910719090bd8ffb7b9fdd1caa1f0f2dc87628"

  url "https://github.com/PlayCover/PlayCover/releases/download/#{version}/PlayCover_#{version}.dmg"
  name "PlayCover"
  desc "Sideload iOS apps and games"
  homepage "https://github.com/PlayCover/PlayCover"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)+[._-]beta(\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "playcover-community"
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "PlayCover.app"

  zap trash: [
    "~/Library/Application Support/io.playcover.PlayCover",
    "~/Library/Caches/io.playcover.PlayCover",
    "~/Library/Containers/io.playcover.PlayCover",
    "~/Library/Frameworks/PlayTools.framework",
    "~/Library/Preferences/io.playcover.PlayCover.plist",
    "~/Library/Saved Application State/io.playcover.PlayCover.savedState",
  ]
end
