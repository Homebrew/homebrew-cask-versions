cask "handbrake-nightly" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    base_url = "https://handbrake.fr/nightly.php"
    file_path = URI.parse(base_url).open do |f|
      content = f.read
      /href=["']?(?<file_path>[^"' >]*Handbrake[._-][^"' >]+\.dmg)["' >]/i =~ content
      file_path
    end
    file_path ? URI.join(base_url, file_path) : nil
  end
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/nightly.php"

  app "HandBrake.app"
end
