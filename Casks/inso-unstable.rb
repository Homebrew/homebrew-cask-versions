cask "inso-unstable" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    releases_url = "https://github.com/Kong/insomnia/releases"
    lib_version = URI(releases_url).open do |io|
      io.read.scan(/href=["'].*?inso-macos-(?:latest-)*(\d+(?:\.\d+)+[._-](?:alpha|beta)[._-]\d*)\.zip/i).max[0]
    end
    [
      "#{releases_url}/download/lib%40#{lib_version}/inso-macos-#{lib_version}.zip",
      { verified: "github.com/Kong/insomnia/" },
    ]
  end
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  conflicts_with cask: "inso"

  binary "inso"

  caveats <<~EOS
    This may or may not be behind the latest "stable" release.
  EOS
end
