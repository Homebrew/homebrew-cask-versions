cask "mixxx-snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.5-alpha-66-gbfd09b6ba3"
  sha256 arm:   "8dad060c75115e009498879cbfaba2b4a613f4ff4c892dd90afca16539589dbd",
         intel: "6708d0aea2a4591ef6eddec4b257c4997ab1d066523ae211d99bb3cb172e79e1"

  url "https://downloads.mixxx.org/snapshots/main/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://mixxx.org/download/"
    regex(%r{href=.*?/snapshots/main/mixxx[._-]v?(.+)[._-]macos#{arch}\.dmg}i)
  end

  conflicts_with cask: "mixxx"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
