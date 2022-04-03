cask "inso-beta" do
  version "2.11.0-beta.0"
  sha256 "ed67d70000ccad358dbb7bfbe67e206aad3c454678cf0d833b81d11857c0e923"

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
