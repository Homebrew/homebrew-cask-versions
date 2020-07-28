cask "sonarr-beta" do
  version :latest
  sha256 :no_check

  url "https://services.sonarr.tv/v1/download/phantom-develop/latest?version=3&os=macos&installer=true"
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
