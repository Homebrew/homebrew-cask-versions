cask "handbrake-nightly" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    base_url = "https://handbrake.fr/nightly.php"
    content = URI(base_url).read
    file_path = content[/href=["']?([^"' >]*Handbrake[._-][^"' >]+\.dmg)["' >]/i, 1]
    file_path ? URI.join(base_url, file_path) : nil
  end
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/nightly.php"

  app "HandBrake.app"
end
