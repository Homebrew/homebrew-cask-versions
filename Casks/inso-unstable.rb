cask "inso-alpha" do
  version "2.4.0-alpha.1"
  sha256 "e62af5751cb985f27e103eb4546c601082e3b4072bd530e0e1f9d04c7193f714"

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

  conflicts_with cask: "inso"

  binary "inso"
end
