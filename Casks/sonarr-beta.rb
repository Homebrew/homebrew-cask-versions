cask "sonarr-beta" do
  version "3.0.3.904"
  sha256 "a6da5157d3a2c733087cf290684de9773f5bc9502af7d92350cac1e7dd645f08"

  url "http://download.sonarr.tv/v3/phantom-develop/#{version}/Sonarr.phantom-develop.#{version}.macos.zip"
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
