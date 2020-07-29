cask "handbrake-nightly" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    base_url = "https://handbrake.fr/nightly.php"
    URI(base_url).open.read.scan(/href="([^"]+.dmg)"/).flatten.first
  end
  name "HandBrake"
  homepage "https://handbrake.fr/nightly.php"

  app "HandBrake.app"
end
