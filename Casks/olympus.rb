cask "olympus" do
  version "3360"
  sha256 "e38c2e032373321c0bc22f189aa64c4850d501326cb329548af4cdc151e10a9f"

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
