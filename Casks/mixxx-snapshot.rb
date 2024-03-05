cask "mixxx-snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.5-alpha-267-g5524ca0328"
  sha256 arm:   "92beffae39918500b2f04d3c87d0294960e68c77690f04b94086826db18f980f",
         intel: "bc69e180eb4479e4d7b11b61dc3d781ea03a4f96a877cada03d502434a55898e"

  url "https://downloads.mixxx.org/snapshots/main/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://mixxx.org/download/"
    regex(%r{href=.*?/snapshots/main/mixxx[._-]v?(.+)[._-]macos#{arch}\.dmg}i)
  end

  conflicts_with cask: "mixxx"
  depends_on macos: ">= :big_sur"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
