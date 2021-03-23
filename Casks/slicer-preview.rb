cask "slicer-preview" do
  version :latest
  sha256 :no_check

  url do
    require "json"
    base_url = "https://download.slicer.org"
    result = curl_output("--fail", "--silent", "#{base_url}/find?os=macosx&stability=nightly")
    result.assert_success!
    "#{base_url}/#{JSON.parse(result.stdout)["download_url"]}"
  end
  name "3D Slicer"
  desc "Medical image processing and visualization system"
  homepage "https://www.slicer.org/"

  conflicts_with cask: "slicer"

  app "Slicer.app"
end
