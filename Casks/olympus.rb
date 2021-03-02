cask "olympus" do
  version "1988"
  sha256 "51a8719357cbe6754857750c83d9ac6ffa1fdc09b3df160effc1bd48a3b4923a"

  url "https://dev.azure.com/EverestAPI/Olympus/_apis/build/builds/#{version}/artifacts?artifactName=macos.main&$format=zip",
      verified: "dev.azure.com/EverestAPI/Olympus"
  name "Olympus"
  desc "Everest (Mod loader for video games Celeste) installer / manager"
  homepage "https://everestapi.github.io/"

  container nested: "macos.main/dist.zip"

  app "Olympus.app"

  zap trash: [
    "~/Library/Application Support/Olympus",
    "~/Library/Saved Application State/everest.olympus.savedState",
  ]
end
