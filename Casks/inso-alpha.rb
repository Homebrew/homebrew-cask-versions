cask "inso-alpha" do
  version "2.4.0-alpha.1"
  sha256 :no_check

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url "https://github.com/Kong/insomnia/releases"
    strategy :page_match
    regex(/href=.*?inso-macos-(?:latest-)*(\d+(?:\.\d+)+[._-](?:alpha|beta)[._-]\d*)\.zip/i)
  end

  conflicts_with cask: [
    "inso",
  ]

  binary "inso"
end
