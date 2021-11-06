cask "slicer-preview" do
  version :latest
  sha256 :no_check

  url "https://download.slicer.org/find?os=macosx&stability=nightly" do |page|
    require "json"
    file_path = JSON.parse(page)["download_url"]
    URI.join(page.url, file_path)
  end
  name "3D Slicer"
  desc "Medical image processing and visualization system"
  homepage "https://www.slicer.org/"

  conflicts_with cask: "slicer"

  app "Slicer.app"

  zap trash: [
    "~/Library/Application Support/NA-MIC",
    "~/Library/Preferences/org.slicer.slicer.plist",
    "~/Library/Preferences/Slicer.plist",
    "~/Library/Saved Application State/org.slicer.slicer.savedState",
    "~/.config/www.na-mic.org",
  ]
end
