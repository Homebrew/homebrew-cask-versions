cask "slicer-preview" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    require "json"
    base_url = "https://download.slicer.org"
    "#{base_url}/#{JSON.parse(URI("#{base_url}/find?os=macosx&stability=nightly").read)["download_url"]}"
  end
  name "3D Slicer"
  desc "Medical image processing and visualization system"
  homepage "https://www.slicer.org/"

  conflicts_with cask: "slicer"

  app "Slicer.app"
end
