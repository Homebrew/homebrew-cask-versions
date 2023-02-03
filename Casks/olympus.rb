cask "olympus" do
  version "3068"
  sha256 "a029a5056f56184478cc3e42caafe18b513d59d75a281ab908c35e43852d18bc"

  url "https://dev.azure.com/EverestAPI/Olympus/_apis/build/builds/#{version}/artifacts?artifactName=macos.main&$format=zip",
      verified: "dev.azure.com/EverestAPI/Olympus"
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
