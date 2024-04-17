cask "inso-beta" do
  version "9.0.0-beta.4"
  sha256 "f0cec313b386c3701e20ccf4fb1ef6700af59131d7d0f7571a8d925e1025bd61"

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
