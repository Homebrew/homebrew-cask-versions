cask "mixxx-snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.5-alpha-264-g1c86a47364"
  sha256 arm:   "fa296b44cd6c7212ff9e94e13c8fcb56885035341b88d3bcd088c56f6c6c3781",
         intel: "1c15c6c2ba37cf6991523410e376d8598f1e90be6ad6d7da8dd87647fdf5d953"

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
