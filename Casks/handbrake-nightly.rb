cask "handbrake-nightly" do
  version :latest
  sha256 :no_check

  url "https://handbrake.fr/nightly.php" do |page|
    file_path = page[/href=["']?([^"' >]*Handbrake[._-][^"' >]+\.dmg)["' >]/i, 1]
    URI.join(page.url, file_path)
  end
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/nightly.php"

  app "HandBrake.app"
end
