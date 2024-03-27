cask "inso-beta" do
  version "9.0.0-beta.3"
  sha256 "2498b75eb64bb4c737153d77ffa159ad2b2b861b7f075ee9bac2d7a0ab83bcb2"

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
