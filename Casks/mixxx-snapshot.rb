cask "mixxx-snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.5-alpha-79-ga70dabe322"
  sha256 arm:   "5d015534d6101b422ec618494aaa9794f38a92b332d18363e7f44ca154e28750",
         intel: "6896d318baee48c04b3fb7c9c543061700f0ef785faad7775e49630277fea6c2"

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
