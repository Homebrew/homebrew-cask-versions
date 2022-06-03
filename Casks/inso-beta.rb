cask "inso-beta" do
  version "3.1.0-beta.3"
  sha256 "85c12d3726f335c832c5d8409f2612182f5b572aeffacd888455ca0efcd62d5e"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url "https://github.com/Kong/insomnia/releases?q=prerelease%3Atrue+Inso+CLI"
    strategy :page_match
    regex(/href=.*?inso-macos-(?:latest-)*(\d+(?:\.\d+)+[._-](?:beta)[._-]\d*)\.zip/i)
  end

  conflicts_with cask: "inso"

  binary "inso"
end
