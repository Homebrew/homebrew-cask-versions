cask "sonarr-beta" do
  version "3.0.3.907"
  sha256 "91c1cf79666afb22bf489e60a4f2b09a1db5aa5b3afba40e2812799e163ad13b"

  url "http://download.sonarr.tv/v#{version.major}/phantom-develop/#{version}/Sonarr.phantom-develop.#{version}.macos.zip"
  appcast "http://download.sonarr.tv/v#{version.major}/phantom-develop/"
  name "sonarr-beta"
  homepage "https://sonarr.tv/"

  conflicts_with cask: "sonarr"
  depends_on cask: "mono-mdk"

  app "Sonarr.app"

  zap trash: [
    "~/.config/Sonarr",
    "~/Library/Saved Application State/com.osx.sonarr.tv.savedState",
  ]
end
