cask "inso-beta" do
  version "8.2.1-beta.0"
  sha256 "447eb2dc5e52fa94f8000d36529505fd4fcea34585d762e9d3b79ee87a00b043"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url "https://github.com/Kong/insomnia/releases?q=prerelease%3Atrue+Inso+CLI"
    regex(%r{href=["']?[^"' >]*?/tag/lib%40([^"' >]+?)["' >]}i)
    strategy :page_match
  end

  conflicts_with cask: "inso"

  binary "inso"

  # No zap stanza required
end
