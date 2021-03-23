cask "handbrake-nightly" do
  version :latest
  sha256 :no_check

  url do
    base_url = "https://handbrake.fr/nightly.php"
    result = curl_output("--fail", "--silent", base_url)
    result.assert_success!
    file_path = result.stdout[/href=["']?([^"' >]*Handbrake[._-][^"' >]+\.dmg)["' >]/i, 1]
    file_path ? URI.join(base_url, file_path) : nil
  end
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/nightly.php"

  app "HandBrake.app"
end
