cask "slicer-nightly" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    require "json"
    base_url = "https://download.slicer.org"
    "#{base_url}/#{JSON.parse(URI("#{base_url}/find?os=macosx&stability=nightly").read)["download_url"]}"
  end
  name "3D Slicer"
  homepage "https://www.slicer.org/"

  app "Slicer.app"
end
