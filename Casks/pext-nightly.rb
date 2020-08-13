cask "pext-nightly" do
  version :latest
  sha256 :no_check

  # github.com was verified as official when first introduced to the cask
  url do
    require "open-uri"
    base_url = "https://github.com/Pext/Pext/releases/tag/continuous/"
    file = URI(base_url).open.read.scan(/href="([^"]+.dmg)"/).flatten.first
    "https://github.com#{file}"
  end
  name "Pext"
  homepage "https://pext.io/"

  conflicts_with cask: "pext"

  app "Pext.app"
end
