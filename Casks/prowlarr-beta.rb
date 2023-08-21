cask "prowlarr-beta" do
  arch arm: "arm64", intel: "x64"

  version "1.8.3.3880"
  sha256 arm:   "d331ea21de5f28c54fe259d0704027e05b12d501936a54dd602c306206c35e9f",
         intel: "454a5d72b47deb0c04a44772b7608c4f81f636d548fa8ca0df4141aabe51fc4e"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url "https://prowlarr.servarr.com/v1/update/develop/changes?os=osx"
    strategy :json do |json|
      json.first["version"]
    end
  end

  conflicts_with cask: "prowlarr"
  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
