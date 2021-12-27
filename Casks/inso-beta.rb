cask "inso-beta" do
  version "2.5.0-beta.0"
  sha256 "28381bae34d60c092f0518eac6ee50b9628dab523b2ff0836e7aa2fa3c6b0be0"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url "https://github.com/Kong/insomnia/releases"
    strategy :page_match
    regex(/href=.*?inso-macos-(?:latest-)*(\d+(?:\.\d+)+[._-](?:beta)[._-]\d*)\.zip/i)
  end

  conflicts_with cask: "inso"

  binary "inso"
end
