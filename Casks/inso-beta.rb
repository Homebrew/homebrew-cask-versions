cask "inso-beta" do
  version "8.5.2-beta.0"
  sha256 "ae24ec6441c7145c0f19e1c234141e6e8ff5bac8d73a7c7f7810d1e37422c953"

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
