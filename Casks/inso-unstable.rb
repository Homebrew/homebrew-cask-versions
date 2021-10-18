cask "inso-unstable" do
  version :latest
  sha256 :no_check

  name "inso"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url "https://github.com/Kong/insomnia/releases"
    strategy :page_match
    regex(/href=.*?inso-macos-(?:latest-)*(\d+(?:\.\d+).*?)\.zip/i)
  end

  auto_updates true

  binary "inso"

  conflicts_with cask: [
    "inso",
  ]
end
