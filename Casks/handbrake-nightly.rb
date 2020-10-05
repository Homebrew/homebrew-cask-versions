cask "handbrake-nightly" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    base_url = "https://handbrake.fr/nightly.php"
    URI(base_url).read[/href="([^"]+.dmg)"/, 1]
  end
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/nightly.php"

  app "HandBrake.app"
end
