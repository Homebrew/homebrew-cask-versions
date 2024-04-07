cask "mixxx-snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.5-alpha-310-g20de6fa9fa"
  sha256 arm:   "ce7431c48d3864ffd91cc49a7837984892334576dfbe2cbc57e4f4d2c4f06b54",
         intel: "bec4af0bfd9b6e63f045ef82c760a5d07faf5569ffeaec275e9b8ad7fcd8d4f5"

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
