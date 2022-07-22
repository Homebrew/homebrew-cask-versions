cask "inso-beta" do
  version "3.3.1-beta.4"
  sha256 "5ea105646e39de795dcaba95b2707be83c9093f26212c17b53a559d6bb817ede"

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
