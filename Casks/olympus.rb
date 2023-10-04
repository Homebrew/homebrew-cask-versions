cask "olympus" do
  version "3559"
  sha256 "ce03c6b10919f30e50d55b4e08dde2c37c96fde43bb9f80c46672d00249af772"

  url "https://dev.azure.com/EverestAPI/Olympus/_apis/build/builds/#{version}/artifacts?artifactName=macos.main&$format=zip",
      verified: "dev.azure.com/EverestAPI/Olympus/_apis/build/builds/"
  name "Olympus"
  desc "Everest (Mod loader for video games Celeste) installer / manager"
  homepage "https://everestapi.github.io/"

  livecheck do
    url "https://dev.azure.com/EverestAPI/Olympus/_apis/build/builds"
    strategy :page_match do |page|
      JSON.parse(page)["value"].map do |build|
        build["id"].to_s if build["sourceBranch"] == "refs/heads/stable"
      end.compact
    end
  end

  container nested: "macos.main/dist.zip"

  app "Olympus.app"

  zap trash: [
    "~/Library/Application Support/Olympus",
    "~/Library/Saved Application State/everest.olympus.savedState",
  ]
end
